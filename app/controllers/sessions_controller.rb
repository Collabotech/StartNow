class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: Params[session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    else
      render 'new'
    end
  end
end
