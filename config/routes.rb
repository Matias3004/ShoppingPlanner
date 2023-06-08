Rails.application.routes.draw do
  root to: 'static#index'
  get 'sessions/new'


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


  resources :recipe_elements
  resources :recipes
  resources :fridge_elements
  resources :fridges
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
