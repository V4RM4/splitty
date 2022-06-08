Rails.application.routes.draw do
  
  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get "/signout", to: "sessions#destroy"

end
