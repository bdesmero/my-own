MyOwn::Application.routes.draw do

  root :to => 'dashboard#show'
  
  resource :dashboard, :controller => 'dashboard', :only => :show
  resource :user, :controller => 'user', :only => :edit
  resource :session, :controller => 'session', :only => [:new, :create, :destroy]
  
  resources :posts
  resources :words
  resources :quizzes
  
end
