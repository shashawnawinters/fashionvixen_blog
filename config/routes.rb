Rails.application.routes.draw do

  get 'admin/index'

  get 'sessions/new'

  resources :articles do
  	resources :comments
  end

  resources :users

  get "jashton", to: "jashton#index"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get    '/logout',  to: 'sessions#destroy'
  
  root 'home#index'
end
