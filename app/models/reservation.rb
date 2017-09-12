class Reservation < ApplicationRecord
  belongs_to :seating

  delegate :restaurant, to: :seating, allow_nil: false

  validate :seating_full, :party_too_large

  def seating_full
    if seating.remaining_seats + party_size > restaurant.capacity
      errors.add(:seating, "doesn't have enough seats! There are only #{seating.remaining_seats} available.")
    end
  end

  def party_too_large
    if party_size > restaurant.capacity
      errors[:base] << "Your party size is too big for this restaurant!"
    end
  end

end
