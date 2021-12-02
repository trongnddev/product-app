Rails.application.routes.draw do

  resources :properties
  resources :categories
  resources :products
  root "products#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
