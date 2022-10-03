# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: ''
  resources :users, only: %i[index show] do
    resources :foods, only: %i[index show destroy]
    resources :recipes, only: %i[index show destroy]
    resources :recipe_foods
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'
end
