Rails.application.routes.draw do
  
  get 'welcome/index'

  root 'welcome#index'

  resources :contents, only: [:index, :show, :destroy] do
  resources :reviews, only: [:create, :destroy]
  end


  get '/login' => 'session#new'

  post '/login' => 'session#create'

  get '/logout' => 'session#destroy'

  get '/signup' => 'welcome#index'

  post '/users' => 'users#create'

  post '/contents' => 'contents#create'

  get '/users/:id' => 'users#index'

  post '/comments' => 'comments#create'

  post '/reviews/delete' => 'comments#destroy'

  get '/delete/:id' => 'comments#show'

  post '/contents/:id' => 'contents#destroy'

  post '/likes' => 'likes#create'

  post '/likes/:id' => 'likes#destroy'

  post '/saves' => 'saves#create'

  post '/saves:id' => 'saves#destroy'

  get '/saved' => 'saves#index'

  post '/follows' => 'follows#create'

  get '/follows' => 'follows#create'

  get '/follows/:id' => 'follows#destroy'

  post '/follows/:id' => 'follows#destroy'

  get 'following' => 'follows#index'

  # get '/users/:id'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
