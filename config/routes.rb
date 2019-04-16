Rails.application.routes.draw do

  devise_for :orders, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'order/create'

  #
  # get 'sessions/new'
  #
  # get    '/cart',   to: 'sessions#new'
  # post   '/cart',   to: 'sessions#create'
  # delete '/empty',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products
  resource :cart
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
end
