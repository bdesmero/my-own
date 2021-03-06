MyOwn::Application.routes.draw do

  root :to => 'dashboard#show'
  
  match '/searches/:query' => 'searches#show', :as => :searches
  
  resource :dashboard, :controller => 'dashboard', :only => :show
  resource :user, :controller => 'user', :only => :edit
  resource :session, :controller => 'session', :only => [:new, :create, :destroy]
  
  resources :posts
  resources :words
  resources :quizzes do
    get 'reset_scores'
  end
  
  resources :lessons do
    resources :contents
  end
  
  resources :categories do
    resources :words
  end
end
