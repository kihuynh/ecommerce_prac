Rails.application.routes.draw do
  devise_for :users
  root 'products#index'

  resource :cart, only: [:show]

  resources :order_items do
    resources :orders
  end

  resources :products

  resources :charges
end
