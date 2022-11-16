Rails.application.routes.draw do
  root to: "restaurants#index"

  resources :restaurants, except: [:destroy] do
    collection do
      get :top
      get :bottom
    end

    member do
      get :chef       #  "get/restaurants/:id/chef"
    end

    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
