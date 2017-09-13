class User < ApplicationRecord
  has_secure_password
  has_many :restaurants
  validates :name, :email , :password, :password_confirmation, presence: true  
end
