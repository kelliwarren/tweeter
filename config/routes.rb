Tweeter::Application.routes.draw do

  
  devise_for :users
  root "static_pages#welcome"
  get "static_pages/about"
  get "static_pages/tos"
  get "static_pages/privacy"

  
end
