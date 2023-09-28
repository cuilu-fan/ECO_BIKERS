Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "category#index"

  resources :bikes do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:show]
end
