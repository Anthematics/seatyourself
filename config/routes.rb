Rails.application.routes.draw do

	resources :sessions

	resources :users, only: [:new , :create]
	root "restaurants#index"

	resources :restaurants do
		resources :seatings do
			resource :reservations
		end
	end
end
