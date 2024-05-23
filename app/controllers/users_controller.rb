class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create] 
    skip_before_action :verify_authenticity_token, only: [:create]
  
    def show
      @user = User.find(params[:id])
    end
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid? 
        session[:user_id] = @user.id
        redirect_to dashboard_path
      else
        flash[:error] = "Not a valid username or password"
        render :new
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username,:email, :password)
    end
  end
  