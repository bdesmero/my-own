MyOwn::Application.routes.draw do

  get "contents/index"

  get "contents/new"

  get "contents/show"

  get "contents/edit"

  get "lessons/index"

  get "lessons/new"

  get "lessons/show"

  get "lessons/edit"

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
  
end
