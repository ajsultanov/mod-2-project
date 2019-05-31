[1,2,3,4,5].each do |num|
  User.create(
    username:"user#{num}",
    email: "user#{num}@example.com",
    password: "test"
  )
end
User.create(username:"adam", email: "adam@a.com", password:"123")

%w(Nature NYC Art Humor Space Travel Fun Sports Food Science Cats).each do |tag_name|
  Tag.create(name: tag_name)
end
# 1.Nature 2.NYC 3.Art 4.Humor 5.Space 6.Travel 7.Fun 8.Sports 9.Food 10.Science 11.Cats

urls = ["blep",
        "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg",
        "https://i.imgur.com/q992dgi.jpg", #2 planes
        "https://i.imgur.com/l04EhtU.jpg", #3 sunset
        "https://i.imgur.com/zLQUfWb.jpg", #cat mess
        #"https://i.imgur.com/I7FpK0o.jpg", #4 pb cup
        "https://i.imgur.com/oIJsmOX.jpg", #5 dog
        "https://i.imgur.com/0Eocd7X.jpg", #6 slj
        "https://i.imgur.com/qjPV0WH.jpg", #7 ironlung
        "https://i.imgur.com/dt7xwXA.jpg", #8 space
        "https://i.imgur.com/bIuvMtF.jpg", #9 latte
        "https://i.imgur.com/6yHmlwT.jpg"  #10 cat
      ]

Picture.create(url: urls[1], title: "Smooth water man", user_id: 1)
PictureTag.create(picture_id: 1, tag_id: 1)
Comment.create( picture_id: 1, content: "Incredible!!!!", user_id: 2)
Comment.create(picture_id: 1, content: "WOWOW", user_id: 3)

Picture.create(url: urls[2], title: "Big air zooms", user_id: 2)
PictureTag.create(picture_id: 2, tag_id: 6)
PictureTag.create(picture_id: 2, tag_id: 10)

Picture.create(url: urls[3], title: "A nice sunset", user_id: 3)
PictureTag.create(picture_id: 3, tag_id: 1)
PictureTag.create(picture_id: 3, tag_id: 6)
Comment.create(picture_id: 2, content: "I am amazed", user_id: 2)

Picture.create(url: urls[4], title: "Bad Kitty", user_id: 4)
PictureTag.create(picture_id: 4, tag_id: 3)
PictureTag.create(picture_id: 4, tag_id: 4)
PictureTag.create(picture_id: 4, tag_id: 7)
PictureTag.create(picture_id: 4, tag_id: 9)
PictureTag.create(picture_id: 4, tag_id: 11)

Picture.create(url: urls[5], title: "My dog at the beach", user_id: 5)
PictureTag.create(picture_id: 5, tag_id: 1)
PictureTag.create(picture_id: 5, tag_id: 2)
PictureTag.create(picture_id: 5, tag_id: 6)
PictureTag.create(picture_id: 5, tag_id: 7)

Picture.create(url: urls[6], title: "My favorite Jedi master", user_id: 1)
PictureTag.create(picture_id: 6, tag_id: 4)
PictureTag.create(picture_id: 6, tag_id: 5)

Picture.create(url: urls[7], title: "An iron lung??", user_id: 2)
PictureTag.create(picture_id: 7, tag_id: 8)
PictureTag.create(picture_id: 7, tag_id: 10)

Picture.create(url: urls[8], title: "Space", user_id: 3)
PictureTag.create(picture_id: 8, tag_id: 5)
PictureTag.create(picture_id: 8, tag_id: 10)
Comment.create(picture_id: 8, content: "inredulble", user_id: 5)

Picture.create(url: urls[9], title: "Latte for a bird", user_id: 4)
PictureTag.create(picture_id: 9, tag_id: 7)

Picture.create(url: urls[10], title: "Kitty", user_id: 6)
PictureTag.create(picture_id: 10, tag_id: 2)
PictureTag.create(picture_id: 10, tag_id: 4)
PictureTag.create(picture_id: 10, tag_id: 7)
PictureTag.create(picture_id: 10, tag_id: 11)

# More pictures to create
# https://i.imgur.com/KJG3RmV.jpg				dog
# https://i.imgur.com/7gys6Yn.jpg				cali g
# https://i.imgur.com/vbztSpy.png				foods
# https://i.imgur.com/I6sBGnR.jpg				bug
