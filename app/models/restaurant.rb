class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :seatings
  has_many :reservations, through: :seating
end
