Rails.application.routes.draw do
  # Route root of site with "root"
  root 'welcome#index'

  resources :users, only: [:create]
  resources :comments, only: [:index, :create]
end
