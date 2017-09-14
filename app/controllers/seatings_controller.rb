class SeatingsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]

<<<<<<< HEAD
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @seatings = @restaurant.seatings
  end

  def show
    @re
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
  def seating_params
    params.require(:seating).permit(:date)
  end
=======
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
		@resturant=Restaurant.find(params[:restaurant_id])
		unless @resturant.seatings.find_by(date: params[:seating][:date])
			@seating_times = @restaurant.seating_times
			@seating_times.each do |each_time|
				Seating.create({
					restaurant_id: params[:restaurant_id],
					start_hour: each_time,
					date: params[:seating][:date]
					})
			end
			redirect_to ''
		end
	end

	def show_by_date
		@resturant=Restaurant.find(params[:restaurant_id])
		@seatings= @restaurant.seatings.find_by(date:params[:seating][:date])
		render: ''

	end
#from the restaurant view you'll send a post request to the seating controller
# (i am given from the params hash the date and the resturant id)

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
>>>>>>> c9e56f529366ebceee787696d1bdf65d7d637469
end
