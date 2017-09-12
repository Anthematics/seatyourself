Rails.application.routes.draw do
 root "restaurants#index"
	resources :restaurants do
	  resource :seatings
	end
  resources :owners
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
