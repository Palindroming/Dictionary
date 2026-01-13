Rails.application.routes.draw do
  root 'users#new'


  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
