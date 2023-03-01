Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  resources :stores
  get 'admin/login'
  post 'admin/login'
  get 'account/logout'
  post 'account/logout'
  devise_for :users
  get 'home/index'
  root to: "home#index"
  get 'gallery/checkout'
  post 'gallery/checkout'
  get 'gallery/search'
  post 'gallery/search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
