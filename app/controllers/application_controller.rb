class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def login_required
    unless session[:user_id]
      redirect_to new_session_path
    end
  end
  
end
