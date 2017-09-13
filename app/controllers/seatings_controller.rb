class SeatingsController < ApplicationController

	def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @seatings = @restaurant.seatings
	end

	def show

	end

	def new
		@seating= Seating.new
	end

	def create
		@seating= Seating.create(seating_params)
		@seating
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
