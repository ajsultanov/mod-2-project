Rails.application.routes.draw do

  resources :pictures, :tags, :comments, :users


  root to: 'pictures#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '*path' => redirect('/')

end
