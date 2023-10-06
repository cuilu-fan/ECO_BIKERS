Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"

  resources :bikes do
    resources :orders, only: [:create]
  end
  resources :carts, only: [:index, :create, :destroy]
  resources :orders, only: [:index]
end
