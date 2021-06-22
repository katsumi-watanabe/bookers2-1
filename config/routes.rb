Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get "home/about", to: "home#about"
  resources :users, only: [:edit, :index, :show, :update]
  resources :books, only: [:edit, :index, :show, :create, :update, :destroy]

end