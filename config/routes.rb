Rails.application.routes.draw do

  resources :types
  root to: 'posts#index'

  resources :agencies
  resources :categories
  resources :posts
  resources :countries

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
