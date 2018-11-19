Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :spaces do
    resources :reviews, only: [ :new, :create ]
  end

  resources :spaces do
    resources :bookings
  end
end


