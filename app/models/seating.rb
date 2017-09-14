class Seating < ApplicationRecord
  belongs_to :restaurant
  has_many :reservations
  validates :date, presence: true
  validates_format_of :date, :with =>/((\d){2,}\/){2,}(\d){4}/ , :on => :create


  def remaining_seats
    total = 0
    reservations.each do |each_reservation|
      total += each_reservation.party_size
    end

    return self.restaurant.capacity - total

  end

  def full?
    return true if remaining_seats <= 0
    return false
  end


end
