module ApplicationHelper

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def admin?
    current_user.admin?
  end

end
