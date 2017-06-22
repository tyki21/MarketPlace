Rails.application.routes.draw do
  root 'store#index', as: 'store_index'
  resources :products

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'admin/index'

  resources :carts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
