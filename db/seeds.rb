# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying articleRating seeds"

ArticleRating.destroy_all
puts "destroying gameRating seeds"
GameRating.destroy_all
puts "destroying user seeds"
User.destroy_all
puts "destroying article seeds"
Article.destroy_all
puts "destroying game seeds"
Game.destroy_all

puts "creating User data"

steven = User.create!(admin: true ,username: "steven420", password:"123",avatar: "https://img.cinemablend.com/filter:scale/cb/4/4/f/e/1/8/44fe1892ceede1a11f0d241fec3ec27a7d18c9bb66a041cd60b347d014b645de.jpg?mw=600", email:"steven@email.com")
alice = User.create!(admin: false ,username: "alice420", password:"123",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", email:"alice@email.com")
brian = User.create!(admin: false ,username: "brian420", password:"123",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", email:"alice@email.com")

puts "creating Game data"

game1 = Game.create!(title: "Fallout: New Vegas", genre: "RPG", img_url: "https://cdn.mos.cms.futurecdn.net/Mv895k5GNQazrGKbLVyk66.jpg", video_url:"https://www.youtube.com/watch?v=fMXGc36YBbA", description:"Fallout: New Vegas is a post-apocalyptic role-playing video game developed by Obsidian Entertainment and published by Bethesda Softworks. While New Vegas is not a direct sequel, it uses the same engine and style as Fallout 3, and many of its developers worked on previous Fallout games at Black Isle Studios. It is the fourth major installment in the Fallout series and the sixth overall. The game is set primarily in a post-apocalyptic Nevada, California, Arizona and Utah." , publisher: "Bethesda Softworks")
game2 = Game.create!(title: "Elder Scrolls V: Skyrim", genre: "RPG", img_url:"https://i0.wp.com/wallur.com/wp-content/uploads/2016/12/skyrim-background-9.jpg?fit=1920%2C1080" )
game3 = Game.create!(title: "CyberPunk", genre: "RPG", img_url:"https://images.hdqwalls.com/download/4k-cyberpunk-2077-ps-game-sr-1920x1080.jpg" )

puts "creating GameRating data"

game_rating1 = GameRating.create!(star: 5, user:steven, game:game1)
game_rating2 = GameRating.create!(star: 5, user:steven, game:game2)
game_rating3 = GameRating.create!(star: 5, user:steven, game:game3)
game_rating4 = GameRating.create!(star: 1, user:alice, game:game3)

puts "creating Article data"

article1 = Article.create!( title:"article 1 title", game: game1, content: "first article -steven", author: steven, img_url:"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/642b3ef4-4c03-4e93-a4eb-80c8146bee5d/d4jbdkh-59c39f42-eb4c-48d8-b06e-5f9877d4a06d.png/v1/fill/w_714,h_742,q_80,strp/random_pikachu_by_ieaka_d4jbdkh-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD03NDIiLCJwYXRoIjoiXC9mXC82NDJiM2VmNC00YzAzLTRlOTMtYTRlYi04MGM4MTQ2YmVlNWRcL2Q0amJka2gtNTljMzlmNDItZWI0Yy00OGQ4LWIwNmUtNWY5ODc3ZDRhMDZkLnBuZyIsIndpZHRoIjoiPD03MTQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.U6Cgp6wtoMep6HAjDsJ1lb4qOqlfQokhkYN7zJxvIDs", video_url: "https://www.youtube.com/watch?v=wZyYwjNZ4ls&t=103s" )
article2 = Article.create!(title:"article 2 title", game: game2, content: "second article -steven", author: steven, img_url:"https://www.mandysam.com/img/random.jpg" )
article3 = Article.create!(title:"article 3 title",game: game1, content: "third article", author: alice, img_url:"https://www.brightful.me/content/images/2020/07/david-kovalenko-G85VuTpw6jg-unsplash.jpg" )

puts "creating ArticleRating data"

article_rating1 = ArticleRating.create!(star: 5, rater:steven, article:article2)
article_rating2 = ArticleRating.create!(star: 5, rater:steven, article:article1)
article_rating3 = ArticleRating.create!(star: 5, rater:alice, article:article1)
article_rating4 = ArticleRating.create!(star: 5, rater:alice, article:article2)

puts "creating ArticleComment data"

article_comment1 = ArticleComment.create!(content:"randome comment 1", commenter:alice, article:article1) 
article_comment1 = ArticleComment.create!(content:"randome comment 2", commenter:steven, article:article3) 

puts "creating Following data"

# followering1 = Following.create!(user:steven , follow:alice)
