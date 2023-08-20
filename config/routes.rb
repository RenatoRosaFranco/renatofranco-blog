# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, {}

  # Application
  root to: 'posts#index'
  resources :posts, only: [:index, :show]
  resources :newsletters, only: [:create]

  # Admin
  namespace :admin do
    # resources :posts
    # resources :newsletters
    resources :users

    root to: "users#index", as: :home
  end

  # API
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
    end
  end
end
