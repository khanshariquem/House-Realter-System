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
  resources :users,  :only => [:index, :new, :create, :destroy]
  devise_for :users,:path => 'u', :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
