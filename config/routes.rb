Rails.application.routes.draw do
  get "/games", to: "games#index"
  resources :tournaments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tournaments#index"
end
