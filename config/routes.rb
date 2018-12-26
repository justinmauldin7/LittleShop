Rails.application.routes.draw do

  root 'root#index'

  namespace :admin do
    resources :users, only: [:index, :show]
    resources :merchants, only: [:show]
    resources :orders, only: [:show]
  end

  namespace :dashboard do
    resources :orders, only: [:show]
    resources :items, only: [:index, :new, :create, :show, :edit]
  end

  get '/profile', to: 'users#show'
  namespace :profile do

    resources :orders, only: [:show, :index]
  end

  get "/profile/edit", to: "users#edit"

  resources :users, only: [:create, :edit, :update] do
    resources :orders, only: [:show]
  end

  resources :items
  resources :orders

  # resource :cart, only: [:create, :index]
  post '/cart', to: 'carts#create'
  get '/cart', to: 'carts#index'
  delete '/cart', to: 'carts#destroy'
  post 'cart/:id/add',   to: 'carts#add_item'
  post 'cart/:id/subtract', to: 'carts#minus_item'

  get '/register', to: "users#new"

  get '/merchants', to: "users#index"


  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get '/dashboard', to: 'dashboard#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
