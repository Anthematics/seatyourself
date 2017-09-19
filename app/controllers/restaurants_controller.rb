class RestaurantsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]
# before_action :ensure_user_owns_restaurant, except: [:show, :index, :new, :create]



  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = find_restaurant
  end

  def new
    @restaurant = Restaurant.new
   end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id
    @restaurant.seating_times = restaurant_params[:seating_times].split(",").uniq.join(",")

    @restaurant.save

    redirect_to @restaurant
  end

  def edit
    @restaurant = find_restaurant
    ensure_user_owns_restaurant

  end

  def update
    @restaurant = find_restaurant
    @restaurant.update(restaurant_params)
    @restaurant.seating_times = restaurant_params[:seating_times].split(",").uniq.join(",")

    @restaurant.save
    redirect_to @restaurant
  end


  def destroy
    @restaurant = find_restaurant
  end

  def find_restaurant
    Restaurant.find(params[:id])
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :cuisine_style, :price_range, :email, :phone_number, :address, :capacity, :description,:user_id,:seating_times)
  end

end
