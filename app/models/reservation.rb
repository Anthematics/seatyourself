class Reservation < ApplicationRecord
  belongs_to :seating
  belongs_to :user
  validates :email, :party_size, presence: true
  validate   :seating_full?
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_numericality_of :party_size


  def seating_full?
    if self.party_size
      if party_size > self.seating.remaining_seats
        errors.add(:time_slot, "doesn't have enough seats! There are only #{seating.remaining_seats} available.")
      end
    end
  end
  #
  # def party_too_large
  #   if party_size > self.seating.restaurant.capacity
  #     errors[:base] << "Your party size is greater than this restaurant's capacity!!"
  #   end
  # end

end
