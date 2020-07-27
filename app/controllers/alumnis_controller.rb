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

    def index
        @alumnis = Alumni.all
    end

    def water_students
        @water_students = Alumni.where(course: "Diploma in Water engineering")
    end

    def electrical_students
        @electrical_students = Alumni.where(course: "Diploma in Electrical Engineering")
    end

    def mechanical_students
        @mechanical_students = Alumni.where(course: "Diploma in Mechanical Engineering")
    end

    def architectural_students
        @architectural_students = Alumni.where(course: "Diploma in Architecture")
    end

    def civil_students
        @civil_students = Alumni.where(course: "Diploma in Civil Engineering")
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
            :own_company,
            :phonecontact
        )
    end
end
