class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to root_path
    else
      :unauthorized
      @errors = ["User is not admin"]
      redirect_to login_path
    end
  end

  def destroy
    session[:id] = nil
    @current_user = nil
    redirect_to root_path
  end

end
