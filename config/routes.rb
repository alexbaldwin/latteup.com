Rails.application.routes.draw do
  devise_for :users
  resources :shops
  root 'shops#index'
end
