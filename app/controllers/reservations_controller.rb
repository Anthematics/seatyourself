class ReservationsController < ApplicationController

  def index
    @restaurant = Restaurant.find(restaurant_id)
    @seating = Seating.find(seating_id)
    @reservations = @seating.reservations
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @seating = Seating.find(params[:seating_id])
    @reservation = Reservation.new
  end

  def create

  end

end
