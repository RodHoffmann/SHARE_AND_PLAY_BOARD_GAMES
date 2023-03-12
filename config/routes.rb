Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :games do
    resources :bookings, only: %i[new create]
  end
  get "profile",to: "profiles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
