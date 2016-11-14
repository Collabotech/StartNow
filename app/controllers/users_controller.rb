class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Please check your email adress for activate your account"
      flash[:color] = "valid"
      redirect_to '/'
    else
      flash[:notice] = "Invalid email or password"
      flash[:color] = 'invalid'
      redirect_to '/signup'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
