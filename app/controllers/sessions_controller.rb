class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params['session']['email'])

    if !user
      redirect_to login_path, alert: 'User does not exist!'
    elsif user&.authenticate(params['session']['password'])
      sign_in(user)
      redirect_to root_path
    else
      redirect_to login_path, alert: 'Invalid Credentials'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You are successful logged out!'
    redirect_to root_path
  end

  def sign_in(user)
    session[:user_id] = user.id
  end
end
