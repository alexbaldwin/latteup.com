Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'shops#index'
  get '/curators', to: 'curators#index'
  get '/contribute' => 'pages#contribute'
  get '/:id', to: 'shops#show'
end
