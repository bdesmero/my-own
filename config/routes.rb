MyOwn::Application.routes.draw do

  root :to => 'dashboard#show'
  
  resource :dashboard, :controller => 'dashboard', :only => :show
  resource :user, :controller => 'user', :only => :edit
  
end
