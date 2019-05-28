Rails.application.routes.draw do

# PICTURES
  get '/', to: 'pictures#index'
  get '/pictures/new', to: 'pictures#new'
  post '/pictures', to: 'pictures#create'
  # no edit
  # no update
  delete '/pictures/:id', to: 'pictures#delete'
  get '/pictures/:id', to: 'pictures#show', as: 'picture'

# USERS
  # no index
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  post '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#delete'
  get '/users/:id', to: 'users#show', as: 'user'

# TAGS
  get '/tags', to: 'tags#index'
  # no new
    # form on picture new page
  # no create
  # no edit
  # no update
  delete '/tags/:id', to: 'tags#delete'
  get '/tags/:id', to: 'tags#show', as: 'tag'

# COMMENTS
  # no index
  # no new? - in other controller?
    # form on picture show page
  # no create? - in other controller?
  # no edit
  # no update
  delete '/comments/:id', to: 'comments#delete' # ???
  # no show?
end
