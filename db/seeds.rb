[1,2,3].each do |num|
  User.create(
    username:"user#{num}",
    email: "user#{num}@example.com",
    password: "test123"
  )
end

%w(Nature NYC Art Humor Space Travel Fun).each do |tag_name|
  Tag.create(name: tag_name)
end

url = "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg"

Picture.create(
  url: url,
  title: "Saw a dolphin!",
  user_id: User.first.id
)

PictureTag.create(
  picture_id: 1,
  tag_id: 1
)

Comment.create(
  content: "Incredible!!!!",
  user_id: 2,
  picture_id: 1
)
