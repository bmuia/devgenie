class ApplicationController < ActionController::Base
  include ActionController::Cookies

  before_action :authorized
  helper_method :current_user, :logged_in?

  def current_user    
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def authorized   
    redirect_to '/login' unless logged_in?
  end
end
