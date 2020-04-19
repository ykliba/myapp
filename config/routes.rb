Rails.application.routes.draw do
  devise_for :users
  root 'tops#index'

  resources :users, only: [:new, :edit, :update, :create]
  resources :reviews, only: [:index, :new, :create, :dsetroy]
  resources :events, only: [:index]
  resources :gears, only: [:index]

  
  
 
end
