Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :reviews, only: [:create, :destroy]


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'


  get '/signup' => 'welcome#index'
  post '/users' => 'users#create'

  post '/contents' => 'contents#create'

  get '/users/:id' => 'users#index'

  post '/comments' => 'comments#create'

  post '/delete' => 'comments#destroy'

  get '/delete/:id' => 'comments#show'
  # get '/users/:id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
