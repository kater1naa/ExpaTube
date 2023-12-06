Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  resources :events, only: %i[index show new create destroy] do
    resources :attendances, only: %i[create]
  end
  resources :attendances, only: %i[index destroy]

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
