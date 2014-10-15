Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'shops#index'
  get '/curators', to: 'curators#index'
  get '/contribute' => 'pages#contribute'
  get '/:id', to: 'shops#show'
end
