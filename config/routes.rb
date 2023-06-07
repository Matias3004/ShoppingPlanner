Rails.application.routes.draw do
  resources :recipe_elements
  resources :recipes
  resources :product_lists
  resources :products
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'static#index'
end
