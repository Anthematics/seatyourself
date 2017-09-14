class SeatingsController < ApplicationController

	def index
		flash[:notice] = "Please select a date!"
		redirect_to restaurant_path(id: params[:restaurant_id])
	end

	def show

	end

	def new
		@seating= Seating.new
	end


	def create
		@restaurant=Restaurant.find(params[:restaurant_id])
		unless @restaurant.seatings.find_by(date: params[:seating][:date])
			@seating_times = @restaurant.seating_times
			@seating_times.each do |each_time|
				Seating.create({
					restaurant_id: params[:restaurant_id],
					start_hour: each_time,
					date: params[:seating][:date]
					})
			end
		end
		render :show_by_date
	end

	def show_by_date
		@restaurant = Restaurant.find(params[:restaurant_id])
<<<<<<< HEAD
=======
<<<<<<< HEAD


=======
>>>>>>> 608868d6399d91028bd8debdcd5e43465bd808b1
>>>>>>> 15943bc4f7f46690ec439f6b48dbac3993d632d4
	end

	def edit
		@seating= Seating.find(params[:id])
	end

	def update
		@seating= Seating.find(params[:id])
		if @seating.save
		redirect_to @seating
	end
	end

	def destroy
		@seating.destroy
	end

	private
	def restaurant_params
		params.require(:seating).permit(:start_hour,:date)
	end

end
