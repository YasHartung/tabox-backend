Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'
  post '/login', to: 'users#login'

  post '/projects', to: 'projects#create'
  delete '/projects/:id', to: 'projects#destroy'
  get '/projects/:id', to: 'projects#show'
  
  post '/taskboards', to: 'taskboards#create'
  delete '/taskboards/:id', to: 'taskboards#destroy'

  post '/tasks', to: 'tasks#create'
  delete '/tasks/:id', to: 'tasks#destroy'
  post '/tasks/:id', to: 'tasks#add_to_other_taskboard'



  post '/sessions', to: 'sessions#create'
end
