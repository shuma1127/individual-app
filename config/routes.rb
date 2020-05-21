Rails.application.routes.draw do

  devise_for :users

  root to: 'posts#index'

  resources :posts, shallow: true do
    collection do
      get 'search'
    end
  end

  resources :bookmarks, only: [:index,:create, :destroy] do
  end

  resources :users, only: :show do
  end

end