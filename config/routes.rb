Rails.application.routes.draw do

  resources :spaces do
    resources :bookings
      resources :reviews, only: [ :new, :create, :destroy, :edit ]
  end

  resources :spaces do
    resources :bookings, only: [:show, :new, :create, :destroy, :edit]
  end

  resources :bookings, only: [:index]

  devise_for :users

  root to: "spaces#index"
end


