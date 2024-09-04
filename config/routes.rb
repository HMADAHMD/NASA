Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  namespace :api do
    resources :users, only: :show
    get "/user_by_emails/:email", to: "user_by_emails#show", as: :user_by_emails 
  end
end
