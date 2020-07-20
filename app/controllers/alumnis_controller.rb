class AlumnisController < ApplicationController
    def new
        @alumni = Alumni.new
    end

    def create
        @alumni = Alumni.create(alumni_params)
        if @alumni.save
          redirect_to @alumni
        else
          render 'new'
        end
    end

    def show
        @alumni = Alumni.find(params[:id])
    end

    private
    def alumni_params
        params.require(:alumni).permit(
            :first_name, 
            :last_name, 
            :email,
            :course,
            :year_of_study,
            :employed,
            :employer,
            :own_company
        )
    end
end
