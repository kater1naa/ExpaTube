Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :events, only: [:show, :new, :index, :create]
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
