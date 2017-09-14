class SeatingsController < ApplicationController
before_action :ensure_logged_in, except: [:show, :index]

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
end
