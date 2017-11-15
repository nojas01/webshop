Rails.application.routes.draw do

  root to: 'products#index'

devise_for :users

  resources :profiles, only: [:new, :edit, :create, :update]

  resources :products, only: [:index, :show]

resource :cart, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
