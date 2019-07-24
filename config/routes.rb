Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'

  post '/login', to: 'users#login'
  post '/clients', to: 'clients#create'
  delete '/clients/:id', to: 'clients#destroy'
  get '/clients/:id', to: 'clients#show'
  
  post '/taskboards', to: 'taskboards#create'
  delete '/taskboards/:id', to: 'taskboards#destroy'

  post '/tasks', to: 'tasks#create'
  delete '/tasks/:id', to: 'tasks#destroy'
  post '/tasks/:id', to: 'tasks#add_to_other_taskboard'

  post '/logs', to: 'logs#create'

  post '/sessions' to: 'sessions#create'
end
