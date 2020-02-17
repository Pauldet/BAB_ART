Rails.application.routes.draw do
  devise_for :users
  root to: 'piece_of_arts#index'
  resources :piece_of_arts, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    end
  resources :bookings, only: [:show, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
