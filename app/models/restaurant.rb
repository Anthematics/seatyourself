class Restaurant < ActiveRecord::Base
  belongs_to :user
  has_many :seatings
  has_many :reservations, through: :seating
  serialize :seating_times
end
