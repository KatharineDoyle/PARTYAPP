Rails.application.routes.draw do

  resources :spaces do
    resources :bookings, only: [:show, :new, :create, :destroy, :edit]
  end

  resources :bookings, only: [:destroy]

  resources :bookings, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  devise_for :users

  root to: "spaces#index"
end


