class ApplicationController < ActionController::Base


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  skip_before_action :verify_authenticity_token

#current_user determines whether a user is logged in or logged out by checking
#whether there's a user in the database with a given session id
#otherwise the user is logged out and @current_user will be nil

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

#the require_user method uses the current_user method to redirect logged out users to hte login page

  def require_user
    redirect_to '/login' unless current_user
  end



end
