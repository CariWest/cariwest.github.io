class SessionsController < ApplicationController
  include ApplicationHelper

  def new
    @session = Session.new
  end

  def create
    login = @session.login(params["username"], params["password"])

    if !@login
      not_found
      @errors = ["User is not valid"]
    end

    redirect_to root_path
  end

  def delete
  end

end
