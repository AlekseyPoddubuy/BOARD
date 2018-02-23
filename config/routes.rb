Rails.application.routes.draw do

  resources :jobs
  resources :themes
  resources :topics do
    resources :replies
  end


  devise_for :users, controllers: { registrations: 'registrations'}


  
  resources :faqs
  resources :resumes
  resources :types
  root to: 'posts#index'

  resources :replies
  resources :searches
  resources :agencies
  resources :categories
  resources :posts
  resources :countries

  get 'admin' => 'pages#admin', as: :admin
  get 'admin-posts' => 'pages#adminposts', as: :adminposts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
