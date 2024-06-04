class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  skip_before_action :verify_authenticity_token, only: [:create]

  def new
    # Renders the login form
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      flash[:alert] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
