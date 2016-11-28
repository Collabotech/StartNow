class UsersController < ApplicationController
  before_action :authenticate_user!


  def edit
    @user = current_user
  end

  def index
    @users = User.all
    if current_user.admin?
          @posts = User.all
    end
  end

  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      bypass_sign_in(@user)
      redirect_to '/'
    else
      render 'edit'
    end
  end

  def show
  end


  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:password, :password_confirmation, :image, :name, :about)
  end

end
