class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def self.most_popular
    Tag.all.sort_by{ |t| t.pictures.length }.first(3)
    Tag.order()
  end

  def self.trending
    # the tag from the last 10 pictures with the most comments???
    # ask what this means
  end
end
