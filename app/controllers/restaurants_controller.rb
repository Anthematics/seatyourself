class RestaurantsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]

	def index
		 @restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		 @restaurant = Restaurant.new
	 end

	def create
		@restaurant = Restaurant.new(restaurant_params)
	  @restaurant.seating_times = request_params[:seating_times].split(",").uniq

    @restaurant.save

		redirect_to @restaurant
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.update(restaurant_params)
		redirect_to @restaurant
	end


	def destroy

	end

	private
	def restaurant_params
		params.require(:restaurant).permit(:name, :cuisine_style, :price_range, :email, :phone_number, :address, :capacity, :description,:user_id,:seating_times)
	end

end
