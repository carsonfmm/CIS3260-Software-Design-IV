Rails.application.routes.draw do
  resources :gamecontents
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root "application#hello"

  # Homepage CupThrow
  root "main#index"

  # Sign-in
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  # Delete Account
  delete "sign_out", to: "sessions#destroy"

  # Play a Game page
  get "game", to: "games#index"
end
