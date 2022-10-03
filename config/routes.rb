Rails.application.routes.draw do
  get 'companies/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :companies, only: [:index, :show]
  resources :company_destinations, only: [:index, :show]
  root to: 'pages#homepage'
  get '/info', to: 'pages#info'
  get '/pandt', to: 'pages#pandt'
  get '/flights', to: 'company_destinations#index'
end
