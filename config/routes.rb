Tweeter::Application.routes.draw do

  # devise_for :users
  devise_for :users, controllers: { registrations: "registrations" }
  root "static_pages#welcome"
  get '/welcome' => 'static#welcome'

  resources :users, only: [:index, :show]
  resources :tweets, only: [:create, :destroy, :show]

  get "static_pages/about"
  get "static_pages/tos"
  get "static_pages/privacy"

  
end
