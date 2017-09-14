class ReservationsController < ApplicationController
	before_action :ensure_logged_in

	def index
		@restaurant = Restaurant.find(restaurant_id)
		@seating = Seating.find(seating_id)
		@reservations = @seating.reservations
	end

	def my_reservations
<<<<<<< HEAD

=======
		
>>>>>>> 5adb58e6cd1f097d7a631dfd1f7609f631a07c9e
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

			if @reservation.save
				flash[:notice] = "All set! You have a reservation at #{@reservation.seating.restaurant.name} at #{@reservation.seating.start_hour} on #{@reservation.seating.date}."
				redirect_to restaurant_path(@reservation.seating.restaurant)
			else
				render "new"
			end
	end

end
