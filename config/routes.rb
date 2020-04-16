Rails.application.routes.draw do

  devise_for :users

  root to: 'posts#index'

  resources :posts, shallow: true do
    collection do
      get 'search'
    end
  end

  resources :users, only: :show

  resources :bookmarks, only: [:create, :destroy]
end

