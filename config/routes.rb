Rails.application.routes.draw do
  resources :pictures, :tags, :comments, :users
  get '/signup', to: 'users#new'

end
