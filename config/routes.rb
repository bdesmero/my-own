MyOwn::Application.routes.draw do

  get "words/index"

  get "words/show"

  get "words/new"

  get "words/edit"

  root :to => 'dashboard#show'
  
  resource :dashboard, :controller => 'dashboard', :only => :show
  resource :user, :controller => 'user', :only => :edit
  resource :session, :controller => 'session', :only => [:new, :create, :destroy]
  
  resources :posts
  resources :words
  
end
