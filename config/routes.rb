Rails.application.routes.draw do
  root to: 'static#index'
  get 'sessions/new'


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users do
    resources :fridges, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :fridge_elements, only: [:new, :create, :edit, :update, :show, :destroy]
    end
    resources :recipes, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :recipe_elements, only: [:new, :create, :edit, :update, :show, :destroy]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
