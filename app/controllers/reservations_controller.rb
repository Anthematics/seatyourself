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
    @reservation = Reservation.new

  end

  def create
    @reservation = Reservation.new({
       email: params[:post][:email],
       party_size: params[:post][:party_size],
       user_id: session[:user_id],
       seating_id: params[:seating_id]
      })

      if @reservation.save
        redirect_to restaurants_path
      else
        render "new"
      end
  end

end
