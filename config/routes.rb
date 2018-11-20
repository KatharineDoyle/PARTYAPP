Rails.application.routes.draw do

  resources :spaces do
    resources :reviews, only: [ :new, :create ]
  end

  resources :spaces do
    resources :bookings
  end

  devise_for :users

  root to: "spaces#index"
end


