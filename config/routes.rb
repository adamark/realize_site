RealizeTheatre::Application.routes.draw do
  
  resources :posts, :users
  resources :events, :except => [:index]
  
  get '/all/events' => 'events#index', :as => :events
  get '/about' => 'public_pages#about', :as => :about
  get '/contact' => 'public_pages#contact', :as => :contact
  get '/events' => 'public_pages#events', :as => :public_events
  get '/donate' => 'public_pages#donate', :as => :donate
  
  get '/login' => 'sessions#new', :as => :login
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy', :as => :logout
  
  root :to => 'public_pages#posts'
  

end
