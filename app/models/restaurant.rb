class Restaurant < ApplicationRecord
  has_many :seatings
  has_many :reservations, through: :seatings
end
