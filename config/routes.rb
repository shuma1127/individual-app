Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts 
  namespace :posts do
    resources :searches, only: :index
end
  resources :users, only: :show
end
