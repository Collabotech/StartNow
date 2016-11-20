class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  
    
  def show
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  
  
  def edit
    @user = User.find(session[:user_id]) if session[:user_id]
  end
  
  
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to '/'
    else
      render 'edit'
    end
  end
  
  
  
  
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :image)
    end

end
