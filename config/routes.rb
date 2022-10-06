# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '' do
    get '/sign_out' => 'devise/sessions#destroy'
  end
  resources :recipes, except: [:update] do
    resources :recipe_foods
  end
  resources :foods, except: [:update]
  resources :recipe_foods
  resources :users, only: %i[index show create destroy]
  get 'shopping_list', to: 'shopping_list#index'
  resources :public_recipes

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'
end
