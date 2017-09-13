class Reservation < ApplicationRecord
  belongs_to :seating
  belongs_to :user
  validate   :seating_full

  def seating_full
    if party_size > self.seating.remaining_seats
      errors.add(:time_slot, "doesn't have enough seats! There are only #{seating.remaining_seats} available.")
    end
  end
  #
  # def party_too_large
  #   if party_size > self.seating.restaurant.capacity
  #     errors[:base] << "Your party size is greater than this restaurant's capacity!!"
  #   end
  # end

end
