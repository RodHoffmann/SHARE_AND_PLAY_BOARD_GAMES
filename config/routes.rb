Rails.application.routes.draw do
  devise_for :users do
    resources :profiles, only: %i[show]
  end
  root to: "pages#home"
  resources :games do
    resources :bookings, only: %i[new create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
