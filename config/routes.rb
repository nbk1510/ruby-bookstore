Rails.application.routes.draw do

  # devise_for :users
  devise_for :orders, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'order/create'

  #
  # get 'sessions/new'
  #
  # get    '/cart',   to: 'sessions#new'
  # post   '/cart',   to: 'sessions#create'
  # delete '/empty',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resource :comments
  resources :products
  resource :cart
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
  scope 'api' do
    get 'products', to: 'v1/api#products', as: :product_list
    get 'categories', to: 'v1/api#categories', as: :category_list
  end

end
