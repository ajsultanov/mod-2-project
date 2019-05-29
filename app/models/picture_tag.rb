class PictureTag < ApplicationRecord
  belongs_to :picture
  belongs_to :tag, inverse_of: :picture_tags
end
