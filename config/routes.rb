Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  resources :bikes do
    resources :orders, only: %i[new create]
  end

  resources :orders, only: %i[show index new create]

  post '/cart/add_item/:item_id', to: 'carts#add_to_cart', as: 'add_to_cart'

  resource :cart, only: %i[show update destroy]
end
