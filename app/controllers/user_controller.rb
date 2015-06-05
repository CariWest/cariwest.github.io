class UserController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params) if params[:password] == params[:password_digest]

    if @user.save
      session[:id] = @user.id
      redirect_to root_path
    else
      :bad_request
      redirect_to signup_path
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
  end

end
