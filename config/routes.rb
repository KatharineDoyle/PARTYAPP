Rails.application.routes.draw do

  resources :spaces do
    resources :reviews, only: [ :new, :create ]
  end

  resources :spaces do
    resources :bookings, only: [:show, :new, :create]
  end

  resources :bookings, only: [:index]

  devise_for :users

  root to: "spaces#index"
end


