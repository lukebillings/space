Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'companies/index'
  # resources :companies, only: [:index, :show]
  resources :company_destinations, only: [:index, :show]
  root to: 'pages#homepage'
  get '/companies', to: 'pages#info'
  get '/pandt', to: 'pages#pandt'
  get '/cookies', to: 'pages#cookies'
  get '/flights', to: 'company_destinations#index', as: :flights
end
