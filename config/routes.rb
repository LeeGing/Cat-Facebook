Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'


  get '/signup' => 'welcome#index'
  post '/users' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
