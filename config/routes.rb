Rails.application.routes.draw do
  root 'welcome#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show] do
    resources :favorites
  end

  resources :categories, only: [:index, :show] do
    resources :gifs, only: [:index, :show]
  end

  resources :gifs, only: [:index, :show]

  namespace :admin do
    resources :gifs
    resources :categories, only: [:new, :create]
  end
end
