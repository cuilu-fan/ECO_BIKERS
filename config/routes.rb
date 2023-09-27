Rails.application.routes.draw do
  # Home Page
  root to: "pages#home"

  # Users routes
  get 'users', to: 'user#show'
  get 'users/edit', to: 'user#edit'
  patch 'users/update', to: 'user#update'

  # Categories routes
  get 'categories', to: 'categories#home'

  # Bikes routes
  get 'bikes/:id', to: 'bikes#show'

  # Carts routes
  get 'carts/:bike_id', to: 'carts#show'
  delete 'carts/:bike_id', to: 'carts#index'
  get 'carts/:id', to: 'carts#index'

  # Orders routes
  get 'orders/:id', to: 'orders#index'
  get 'orders/:id/new', to: 'orders#new'
  post 'orders/:id', to: 'orders#create'

  # Reviews routes
  get 'orders/:order_id/reviews', to: 'reviews#new'
  post 'orders/:order_id/reviews', to: 'reviews#create'
end
