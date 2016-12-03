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
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.name
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

private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
 
    
  def user_params
    params.require(:user).permit(:password, :password_confirmation, :image, :name, :about, :latitude, :longitude, :city)
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
