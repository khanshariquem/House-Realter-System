Rails.application.routes.draw do
  resources :replies
  resources :inquiries
  resources :buyers
  resources :houses
  resources :realtors
  resources :hunters
  resources :users
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
