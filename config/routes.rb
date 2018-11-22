Rails.application.routes.draw do

  resources :spaces do
    resources :bookings do
      resources :reviews, only: [ :new, :create, :destroy, :edit ]
    end
  end

  resources :spaces do
    resources :bookings, only: [:show, :new, :create, :destroy, :edit]
  end

  resources :bookings, only: [:index]

  resources :spaces do
    resources :reviews, only: [:index, :show]
  end

  devise_for :users

  root to: "spaces#index"
end


