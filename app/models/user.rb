class User < ApplicationRecord
  has_many :pictures
  has_many :comments
  has_many :pictures, through: :comments  # necessary?
end
