class User < ApplicationRecord
  has_secure_password
  has_many :restaurants
  has_many :reservations

  validates :name, :email, :password, :password_confirmation,presence: true
end
