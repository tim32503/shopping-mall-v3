Rails.application.routes.draw do
  devise_for :users

  root 'store#home'
  resources :products
end
