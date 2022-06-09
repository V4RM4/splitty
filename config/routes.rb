Rails.application.routes.draw do
  resources :expenses
  
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :groups

  get "/signout", to: "sessions#destroy"
  get "/home", to: "groups#index"

end
