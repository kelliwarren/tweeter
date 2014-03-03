Tweeter::Application.routes.draw do

  devise_for :users
  root "static_pages#welcome"

  resources :users, only: [:index, :show]
  resources :tweets, only: [:create, :destroy, :show]

  get "static_pages/about"
  get "static_pages/tos"
  get "static_pages/privacy"

  
end
