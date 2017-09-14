class Restaurant < ActiveRecord::Base
  belongs_to :user
  has_many :seatings
  has_many :reservations, through: :seating
  serialize :seating_times
  validates_format_of :seating_times, :with => /((\d,){1,}\d)|(\d)/, :on => :create
  validates :name, :cuisine_style, :price_range, :email, :phone_number, :description, :seating_times, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

end
