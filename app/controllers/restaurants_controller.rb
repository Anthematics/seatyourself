class RestaurantsController < ApplicationController


<<<<<<< HEAD
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
     @restaurant = Restaurant.new
=======
	def index
		@resturants = Resturants.all
	end

	def new

	end

	def create

	end

	def show

	end
>>>>>>> bf6d55dce493e15fdf6d92b6aaae0602cfd1760a

	def edit

	end

	def update

	end

<<<<<<< HEAD
  end

  def destroy
=======
	def destroy
>>>>>>> bf6d55dce493e15fdf6d92b6aaae0602cfd1760a

	end

end
