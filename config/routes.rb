Rails.application.routes.draw do
  root "spa#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :profiles
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
end
