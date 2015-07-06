Rails.application.routes.draw do
  resources :users
  resources :products
  resources :mentions
  resources :sessions
  resources :identities

  root 'static_pages#landing_page'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  delete '/logout', to: 'sessions#destroy', via: [:get, :post]


end
