Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'

  post '/login', to: 'users#login'
  post '/clients', to: 'clients#create'
  
  post '/taskboards', to: 'taskboards#create'
  delete '/taskboards/:id', to: 'taskboards#destroy'

  post '/tasks', to: 'tasks#create'
end
