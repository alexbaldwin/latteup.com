Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'shops#index'
  get '/curators', to: 'curators#index'
  get '/:id', to: 'shops#show'
end
