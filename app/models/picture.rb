class Picture < ApplicationRecord
  belongs_to :user
  has_many :picture_tags
  has_many :tags, through: :picture_tags
  has_many :comments
  has_many :users, through: :comments

  validates :url, :title, presence: true
  #validates :title, presence: true
end
