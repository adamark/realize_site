RealizeTheatre::Application.routes.draw do
  
  resources :posts, :users, :events
  

  get '/about' => 'public_pages#about', :as => :about
  get '/contact' => 'public_pages#contact', :as => :contact
  get '/shows' => 'public_pages#shows', :as => :shows
  get '/donate' => 'public_pages#donate', :as => :donate
  
  get '/login' => 'sessions#new', :as => :login
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy', :as => :logout
  
  root :to => 'public_pages#posts'
  

end
