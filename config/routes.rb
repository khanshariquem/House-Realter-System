Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resources :replies
  resources :inquiries
  resources :buyers
  resources :houses
  resources :realtors
  resources :hunters
  # resources :users
  resources :companies
  resources :searches, only: [:new, :create, :show]
  resources :users
  devise_for :users,:path => 'u', :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#new'
  match '/users/new', to: 'users#new', via: 'get'
  match '/users', to: 'users#create', via: 'post'
end
