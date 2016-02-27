Rails.application.routes.draw do
  resources :users
  resources :products
  resources :mentions
  resources :sessions
  resources :identities
  resources :mention
  resources :entries
  root 'static_pages#landing_page'
  # root 'mentions#index'
  #
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  delete '/logout', to: 'sessions#destroy', via: [:get, :post]

  resources :feeds do
    member do
      get 'retrieve'
      post 'subscribe'
      post 'unsubscribe'
      end
    end

  mount SuperfeedrEngine::Engine => SuperfeedrEngine::Engine.base_path
end
