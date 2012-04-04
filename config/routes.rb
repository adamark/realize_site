RealizeTheatre::Application.routes.draw do
  
  resources :posts, :events, :users
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => 'posts#index'
  

end
