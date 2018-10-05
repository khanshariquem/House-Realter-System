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
  devise_for :users,:path => 'us', :controllers => {:registrations => "registrations" ,omniauth_callbacks: 'omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#new'
  # get '/us/sign_out', to: 'user/sessions#destroy'
  match '/users/new', to: 'users#new', via: 'get'
  match '/users', to: 'users#create', via: 'post'
  match '/interestList', to: 'buyers#showinterestlist', via: 'get' , as:'show_interest_list'
end
