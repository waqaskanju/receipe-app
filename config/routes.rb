Rails.application.routes.draw do
  devise_for :users, path: ""
    resources :users only: [:index, :show] do
      resources :foods only: [:index, :show, :destroy]
      resources :recipes only: [:index, :show, :destroy] 
      resources :recipe_foods

    
    end


  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
