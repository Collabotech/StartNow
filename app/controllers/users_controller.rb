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

# Now able to identify administrators:
#
# if current_user.admin?
#   # do something
# end
# If the page could potentially not have a current_user set then:
#
# if current_user.try(:admin?)
#   # do something
# end
# With the above way if current_user were nil, then it would still work without raising an undefined method admin? for nil:NilClass exception.
#
# The code below can be used to grant admin status to the current user.
#
# current_user.update_attribute :admin, true
