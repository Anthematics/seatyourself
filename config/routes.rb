Rails.application.routes.draw do

  resources :sessions

  resources :users, only: [:new , :create]
  root "restaurants#index"

  resources :restaurants do
    resources :seatings do
      resource :reservations
    end
  end

  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
