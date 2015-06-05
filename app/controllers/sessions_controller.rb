class SessionsController < ApplicationController

  def new
  end

  def create
    if params["username"] == ENV["USERNAME"]
      user = User.find_by(params["username"])
      if user.authenticate(params["password"])
        session[:id] = user.username
      end
    else
      :unauthorized
      @errors = ["User is not admin"]
    end

    redirect_to root_path
  end

  def delete
    session[:id] = nil
    @current_user = nil
  end

end
