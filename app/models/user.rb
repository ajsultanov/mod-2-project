class User < ApplicationRecord
  has_many :pictures
  has_many :comments
  # has_many :pictures, through: :comments    # unnecessary? ask about this
                                                # how to set up separate relationship between
                                                # users and pictures via comments without
                                                # goofing up the user-picture relationship
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true
  # conditional on signup -- validates :password_confirmation, presence: true

  has_secure_password
end
