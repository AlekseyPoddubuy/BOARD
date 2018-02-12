Rails.application.routes.draw do

  resources :themes
  resources :topics do
    resources :replies
  end


  devise_for :users, controllers: { registrations: 'registrations'}

  
  resources :faqs
  resources :resumes
  resources :types
  root to: 'posts#index'

  resources :searches
  resources :agencies
  resources :categories
  resources :posts
  resources :countries

  get 'agn' => 'pages#agn', as: :agn
  get 'frmindex' => 'pages#frmindex', as: :frmindex
  get 'frmsecond' => 'pages#frmsecond', as: :frmsecond
  get 'frmshow' => 'pages#frmshow', as: :frmshow


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
