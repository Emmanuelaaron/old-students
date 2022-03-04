class ApplicationController < ActionController::Base
  helper_method :current_user
  def authenticate_user!
    redirect_to signin_path if current_user.nil?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
