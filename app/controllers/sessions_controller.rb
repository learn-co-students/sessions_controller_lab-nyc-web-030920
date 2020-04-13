class SessionsController < ApplicationController

  def create
    if params[:name] && params[:name].size > 0
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end
  def destroy
    if session[:name]
      session.delete(:name)
    end
  end
  
end