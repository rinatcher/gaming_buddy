Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

 resource :user, only: [:show, :edit, :update]
  root "spa#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :profiles
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
end
