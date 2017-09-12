class Seating < ApplicationRecord
  belongs_to :restaurant
  has_many :reservations

  def remaining_seats
    total = 0
    reservations.each do |each_reservation|
      total += each_reservation.party_size
    end

    return restaurant.capacity - total

  end

  def full?
    return true if remaining_seats <= 0 else return false
  end


end
