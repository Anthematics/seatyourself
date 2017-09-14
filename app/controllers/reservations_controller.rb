class ReservationsController < ApplicationController
	before_action :ensure_logged_in, except: [:show, :index]

	def index
		@restaurant = Restaurant.find(restaurant_id)
		@seating = Seating.find(seating_id)
		@reservations = @seating.reservations
	end

	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@seating = Seating.find(params[:seating_id])
		@reservation = Reservation.new(seating: @seating)

	end

	def create
		@reservation = Reservation.new({
			 email: params[:post][:email],
			 party_size: params[:post][:party_size],
			 user_id: session[:user_id],
			 seating_id: params[:seating_id]
			})

<<<<<<< HEAD
			if @reservation.save
				redirect_to restaurants_path
			else
				render "new"
			end
	end
=======
      if @reservation.save
        flash[:notice] = "All set! You have a reservation at #{@reservation.seating.restaurant.name} at #{@reservation.seating.start_hour} on #{@reservation.seating.date}."
        redirect_to restaurant_path(@reservation.seating.restaurant)
      else
        render "new"
      end
  end
>>>>>>> 608868d6399d91028bd8debdcd5e43465bd808b1

end
