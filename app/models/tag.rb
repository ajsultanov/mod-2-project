class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags
  has_many :comments, through: :pictures

  def self.most_popular
    Tag.all.sort_by{ |t| t.pictures.length }.last(3)
  end

  def self.trending
    pix = Picture.last(10)
    pix_tags = pix.map { |p| p.tags }.flatten
    trending_tag = pix_tags.sort_by{ |p| p.comments.length }.last
  end
end
