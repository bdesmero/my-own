class SessionController < ApplicationController
  
  layout 'session'
  
  def new
  end
  
  
  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  
  def destroy
    if session[:user_id]
      session[:user_id] = nil
      redirect_to root_path
    end
  end
  
end
