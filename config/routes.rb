Rails.application.routes.draw do
  # Route to Angular layout
  root to: 'application#index'

  resources :users, only: [:create]
  resources :comments, only: [:index, :create], defaults: {format: :json}
end
