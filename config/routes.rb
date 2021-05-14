Rails.application.routes.draw do
  resources :products
  resources :images
  resources :physicals
  resources :digitals
  resources :profiles
  resources :orders
  resources :payments
  resources :payment_methods

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
