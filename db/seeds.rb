# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying all seeds"

ArticleRating.destroy_all
GameRating.destroy_all
User.destroy_all
Game.destroy_all
Article.destroy_all

puts "creating User data"

steven = User.create!(username: "steven420", password:"123",avatar: "https://img.cinemablend.com/filter:scale/cb/4/4/f/e/1/8/44fe1892ceede1a11f0d241fec3ec27a7d18c9bb66a041cd60b347d014b645de.jpg?mw=600", email:"steven@email.com")
alice = User.create!(username: "alice420", password:"123",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", email:"alice@email.com")

puts "creating Game data"

game1 = Game.create!(title: "Fallout: New Vegas", genre: "RPG" )
game2 = Game.create!(title: "Elder Scrolls V: Skyrim", genre: "RPG" )
game3 = Game.create!(title: "OverCooked 2", genre: "Party" )

puts "creating GameRating data"

game_rating1 = GameRating.create!(star: 5, user:steven, game:game1)
game_rating2 = GameRating.create!(star: 5, user:steven, game:game2)
game_rating3 = GameRating.create!(star: 5, user:steven, game:game3)
game_rating4 = GameRating.create!(star: 5, user:alice, game:game3)

puts "creating Article data"

article1 = Article.create!( title:"article 1 title", game: game1, content: "first article -steven", author: steven.username, img_url:"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/642b3ef4-4c03-4e93-a4eb-80c8146bee5d/d4jbdkh-59c39f42-eb4c-48d8-b06e-5f9877d4a06d.png/v1/fill/w_714,h_742,q_80,strp/random_pikachu_by_ieaka_d4jbdkh-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD03NDIiLCJwYXRoIjoiXC9mXC82NDJiM2VmNC00YzAzLTRlOTMtYTRlYi04MGM4MTQ2YmVlNWRcL2Q0amJka2gtNTljMzlmNDItZWI0Yy00OGQ4LWIwNmUtNWY5ODc3ZDRhMDZkLnBuZyIsIndpZHRoIjoiPD03MTQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.U6Cgp6wtoMep6HAjDsJ1lb4qOqlfQokhkYN7zJxvIDs" )
article2 = Article.create!(title:"article 2 title", game: game2, content: "second article -steven", author: steven.username, img_url:"https://www.mandysam.com/img/random.jpg" )
article3 = Article.create!(title:"article 3 title",game: game1, content: "third article", author: alice.username, img_url:"https://www.brightful.me/content/images/2020/07/david-kovalenko-G85VuTpw6jg-unsplash.jpg" )

puts "creating ArticleRating data"

article_rating1 = ArticleRating.create!(star: 5, user:steven, article:article2)
article_rating2 = ArticleRating.create!(star: 5, user:steven, article:article1)
article_rating3 = ArticleRating.create!(star: 5, user:alice, article:article1)
article_rating4 = ArticleRating.create!(star: 5, user:alice, article:article2)
