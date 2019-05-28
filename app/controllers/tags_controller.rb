class TagsController < ApplicationController


# Tag.all.map do |tag|
#   tag.pictures.length
# end

sortedTagsByPictureCount = Tag.all.sort_by(|t| t.pictures.length)
topThreePopularTags = sortedTagsByPictureCount[0..2]
# or sortedTagsByPictureCount.first(3)

end
