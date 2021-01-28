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

steven = User.create!(admin: true ,username: "steven", password:"123",avatar: "https://img.cinemablend.com/filter:scale/cb/4/4/f/e/1/8/44fe1892ceede1a11f0d241fec3ec27a7d18c9bb66a041cd60b347d014b645de.jpg?mw=600", email:"steven@email.com",bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vulputate urna aliquet lectus viverra, et porta risus ultricies. Sed ultrices efficitur mauris id dignissim. Donec consequat vel quam nec aliquam. Sed urna sapien, tristique a lectus id, dictum vulputate nulla. Maecenas eleifend arcu vel sodales ultricies. Integer eu eros non lorem interdum placerat. Etiam consectetur vel nunc sed rutrum. Quisque vulputate metus libero. Fusce eleifend ante non arcu suscipit iaculis. Vivamus lobortis massa mi, at sollicitudin lectus tincidunt nec.")
alice = User.create!(admin: false ,username: "alice420", password:"123",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", email:"alice@email.com")
brian = User.create!(admin: false ,username: "brian420", password:"123",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", email:"alice@email.com")

puts "creating Game data"

game1 = Game.create!(title: "Fallout: New Vegas", genre: "RPG", img_url: "https://cdn.mos.cms.futurecdn.net/Mv895k5GNQazrGKbLVyk66.jpg", video_url:"https://www.youtube.com/watch?v=fMXGc36YBbA", description:"Fallout: New Vegas is a post-apocalyptic role-playing video game developed by Obsidian Entertainment and published by Bethesda Softworks. While New Vegas is not a direct sequel, it uses the same engine and style as Fallout 3, and many of its developers worked on previous Fallout games at Black Isle Studios. It is the fourth major installment in the Fallout series and the sixth overall. The game is set primarily in a post-apocalyptic Nevada, California, Arizona and Utah." , publisher: "Bethesda Softworks")
game2 = Game.create!(title: "Elder Scrolls V: Skyrim", genre: "RPG", img_url:"https://i0.wp.com/wallur.com/wp-content/uploads/2016/12/skyrim-background-9.jpg?fit=1920%2C1080" )
game3 = Game.create!(title: "CyberPunk", genre: "RPG", img_url:"https://images.hdqwalls.com/download/4k-cyberpunk-2077-ps-game-sr-1920x1080.jpg" )

Game.create!(
    title:"Red Dead Redemption 2",
    genre:"Adventure",
    img_url:"https://i.ytimg.com/vi/6jIHyjkney0/maxresdefault.jpg",
    video_url:"https://www.youtube.com/watch?v=yoFvVAMcwOE",
    publisher:"Rockstar Games",
    description:"Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and is a prequel to the 2010 game Red Dead Redemption. The story is set in 1899 in a fictionalized representation of the Western, Midwestern, and Southern United States and follows outlaw Arthur Morgan, a member of the Van der Linde gang. Arthur must deal with the decline of the Wild West whilst attempting to survive against government forces, rival gangs, and other adversaries. The story also follows fellow gang member John Marston, the protagonist of Red Dead Redemption.",
    release_date:"2018-10-26"
    )
Game.create!(
    title:"Hitman 3",
    genre:"Action",
    img_url:"https://wallpaperaccess.com/full/3703678.jpg",
    video_url:"https://www.youtube.com/watch?v=7kjiGzT-sto&t=509s",
    publisher:"IO Interative",
    description:"Agent 47 returns as a ruthless professional for the most important contracts of his entire career in HITMAN 3, the dramatic conclusion to the World of Assassination trilogy.
    ",
    release_date:"2021-01-20"
    )
Game.create!(
    title:"Call of Duty: Warzone",
    genre:"Shooter",
    img_url:"https://wallpaperaccess.com/full/2314739.jpg",
    video_url:"https://www.youtube.com/watch?v=HQKKdkqwBpo",
    publisher:"Activision",
    description:"Welcome to Warzone, the new massive combat arena within Call of Duty®: Modern Warfare®, free for everyone. Drop In Join forces with your friends and jump into a battleground with up to 150 players. Loot For Rewards Discover supply boxes and complete contracts to build your arsenal and gain a tactical advantage. Battle Across Two Epic Modes Experience a new way to ‘Battle Royale’ or play ‘Plunder’ in a race to earn $1,000,000 of in-match Cash.",
    release_date:"2020-03-10"
    )
Game.create!(
    title:"Call of Duty: Black Ops Cold War",
    genre:"Shooter",
    img_url:"https://images.alphacoders.com/109/thumb-1920-1097309.png",
    video_url:"https://www.youtube.com/watch?v=ErZcVRzisBM",
    publisher:"Activision",
    description:"The iconic Black Ops series is back with Call of Duty®: Black Ops Cold War - the direct sequel to the original and fan-favorite Call of Duty®: Black Ops. Black Ops Cold War will drop fans into the depths of the Cold War’s volatile geopolitical battle of the early 1980s. Nothing is ever as it seems in a gripping single-player Campaign, where players will come face-to-face with historical figures and hard truths, as they battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more. As elite operatives, you will follow the trail of a shadowy figure named Perseus who is on a mission to destabilize the global balance of power and change the course of history. Descend into the dark center of this global conspiracy alongside iconic characters Woods, Mason and Hudson and a new cast of operatives attempting to stop a plot decades in the making.",
    release_date:"2020-11-13"
    )
Game.create!(
    title:"DOOM Eternal",
    genre:"Shooter, Action",
    img_url:"https://i.redd.it/b05sjpglzkb41.png",
    video_url:"https://www.youtube.com/watch?v=T12ygsp9Mvg",
    publisher:"Bethesda Softworks",
    description:"Experience the ultimate combination of speed and power as you battle your way across dimensions with the next leap in push-forward, first-person combat.
    Slayer Threat Level at Maximum
    Armed with a shoulder-mounted flamethrower, retractable wrist-mounted blade, upgraded guns and mods, and abilities like the Double Dash, you're faster, stronger, and more versatile than ever.
    Unholy Trinity
    Take what you need from your enemies: Glory kill for extra health, incinerate for armor, and chainsaw demons to stock up on ammo to become the ultimate demon-slayer.
    BATTLEMODE
    BATTLEMODE is the new 2 versus 1 multiplayer experience built from the ground up at id Software. A fully-armed DOOM Slayer faces off against two player-controlled demons, duking it in a best-of-five round match of intense first-person combat. BATTLEMODE launches with 6 handcrafted maps and 5 playable demons – the Marauder, Archvile, Revenant, Mancubus and Pain Elemental.",
    release_date:"2020-03-20"
)
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# Game.create!(
#     title:"",
#     genre:"",
#     img_url:"",
#     video_url:"",
#     publisher:"",
#     description:"",
#     release_date:""
# )
    
puts "creating GameRating data"

game_rating1 = GameRating.create!(star: 5, user:steven, game:game1)
game_rating2 = GameRating.create!(star: 5, user:steven, game:game2)
game_rating3 = GameRating.create!(star: 5, user:steven, game:game3)
game_rating4 = GameRating.create!(star: 1, user:alice, game:game3)

puts "creating Article data"

article1 = Article.create!( title:"article 1 title", game: game1, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus magna ipsum, sed sagittis lacus sagittis a. Curabitur massa arcu, semper vel eleifend et, facilisis ut dolor. Mauris suscipit in ex vel posuere. Vestibulum placerat ut tortor vel gravida. Vestibulum convallis massa eu sapien condimentum sodales. Fusce eleifend sapien nec est convallis accumsan. Sed tincidunt eros ac magna laoreet semper. Phasellus vestibulum mi lorem, vitae ornare justo mattis quis. Donec finibus, erat sed laoreet pharetra, nisl orci fermentum odio, at finibus nulla libero et felis.", author: steven, img_url:"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/642b3ef4-4c03-4e93-a4eb-80c8146bee5d/d4jbdkh-59c39f42-eb4c-48d8-b06e-5f9877d4a06d.png/v1/fill/w_714,h_742,q_80,strp/random_pikachu_by_ieaka_d4jbdkh-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3siaGVpZ2h0IjoiPD03NDIiLCJwYXRoIjoiXC9mXC82NDJiM2VmNC00YzAzLTRlOTMtYTRlYi04MGM4MTQ2YmVlNWRcL2Q0amJka2gtNTljMzlmNDItZWI0Yy00OGQ4LWIwNmUtNWY5ODc3ZDRhMDZkLnBuZyIsIndpZHRoIjoiPD03MTQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.U6Cgp6wtoMep6HAjDsJ1lb4qOqlfQokhkYN7zJxvIDs", video_url: "https://www.youtube.com/watch?v=wZyYwjNZ4ls&t=103s" )
article2 = Article.create!(title:"article 2 title", game: game2, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus magna ipsum, sed sagittis lacus sagittis a. Curabitur massa arcu, semper vel eleifend et, facilisis ut dolor. Mauris suscipit in ex vel posuere. Vestibulum placerat ut tortor vel gravida. Vestibulum convallis massa eu sapien condimentum sodales. Fusce eleifend sapien nec est convallis accumsan. Sed tincidunt eros ac magna laoreet semper. Phasellus vestibulum mi lorem, vitae ornare justo mattis quis. Donec finibus, erat sed laoreet pharetra, nisl orci fermentum odio, at finibus nulla libero et felis.", author: steven, img_url:"https://www.mandysam.com/img/random.jpg" )
article3 = Article.create!(title:"article 3 title",game: game1, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus magna ipsum, sed sagittis lacus sagittis a. Curabitur massa arcu, semper vel eleifend et, facilisis ut dolor. Mauris suscipit in ex vel posuere. Vestibulum placerat ut tortor vel gravida. Vestibulum convallis massa eu sapien condimentum sodales. Fusce eleifend sapien nec est convallis accumsan. Sed tincidunt eros ac magna laoreet semper. Phasellus vestibulum mi lorem, vitae ornare justo mattis quis. Donec finibus, erat sed laoreet pharetra, nisl orci fermentum odio, at finibus nulla libero et felis.", author: alice, img_url:"https://www.brightful.me/content/images/2020/07/david-kovalenko-G85VuTpw6jg-unsplash.jpg" )

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
