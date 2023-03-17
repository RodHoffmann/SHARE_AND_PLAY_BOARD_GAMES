# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning Database..."

Booking.destroy_all
Game.destroy_all
User.destroy_all

puts "Database Cleaned"

# Should create users for Board-games..
puts "Creating User..."

john = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "john.doe@example.com",
  password: "password123",
  address: "13435 Berlin, Germany"
)
p john
samantha = User.create(
  first_name: "Samantha",
  last_name: "Lee",
  email: "samantha.lee@example.com",
  password: "password123",
  address: "10115 Berlin, Germany"
)
p samantha
daniel = User.create(
  first_name: "Daniel",
  last_name: "Nguyen",
  email: "daniel.nguyen@example.com",
  password: "password123",
  address: "10245 Berlin, Germany"
)
p daniel
michael = User.create(
  first_name: "Michael",
  last_name: "Wang",
  email: "michael.wang@example.com",
  password: "password123",
  address: "10719 Berlin, Germany"
)
p michael
julia = User.create(
  first_name: "Julia",
  last_name: "Schmidt",
  email: "julia.schmidt@example.com",
  password: "password123",
  address: "10439 Berlin, Germany"
)
p julia
max = User.create(
  first_name: "Max",
  last_name: "Müller",
  email: "max.mueller@example.com",
  password: "password123",
  address: "10627 Berlin, Germany"
)
p max
isabel = User.create(
  first_name: "Isabel",
  last_name: "Gomez",
  email: "isabel.gomez@example.com",
  password: "password123",
  address: "10247 Berlin, Germany"
)
p isabel
david = User.create(
  first_name: "David",
  last_name: "Liu",
  email: "david.liu@example.com",
  password: "password123",
  address: "10709 Berlin, Germany"
)
p david
sophie = User.create(
  first_name: "Sophie",
  last_name: "Mueller",
  email: "sophie.mueller@example.com",
  password: "password123",
  address: "10179 Berlin, Germany"
)
p sophie
lucas = User.create(
  first_name: "Lucas",
  last_name: "Schneider",
  email: "lucas.schneider@example.com",
  password: "password123",
  address: "10969 Berlin, Germany"
)
p lucas

puts "Users Created"

# Should create games and booking for Board-games....
puts "Creating Games & Booking..."

# require "open-uri"
# require "cloudinary"
# image_file = URI.open("https://cf.geekdo-images.com/BZzaey2sQE406fjaqX3uRQ__imagepagezoom/img/VXHN3dvHyvwFMDyCcFP2I15jp1s=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6652776.jpg")
# dixit = Game.create(
#   name: 'Dixit',
#   category: 'Card game',
#   description: 'By participating in this game, your imagination will be displayed',
#   number_players: 4,
#   day_price: 5,
#   average_duration: 30,
#   user: User.all.sample
# )
# p dixit
# dixit.image.attach(io: image_file, filename: "dixit.jpg")
# dixit.image.analyze
# dixit.image.metadata["public_id"] = Cloudinary::Uploader.upload(dixit.image.blob.url, resource_type: :auto)["public_id"]
# dixit.save
# rand(5).times do
#   start = rand(10).days.ago
#   Booking.create(
#     user: User.all.sample,
#     game: Game.last,
#     start_date: start,
#     end_date: start + rand(5).days
#   )
# end
# require "open-uri"
# require "cloudinary"

# image_urls = [
#   "https://assets1.ignimgs.com/2017/10/11/boardgames-beginner-1280-1-1507760592343_160w.jpg?width=1280",
#   "https://image.api.playstation.com/cdn/EP4917/CUSA12867_00/FREE_CONTENTdKIjz7z4sFXQ0u2EhhvO/T2R_05.jpg",
#   "https://assets-prd.ignimgs.com/2021/09/16/ticket-to-ride-europe-15th-anniversary-edition-1631823447104.jpeg?width=1920"
# ]

# image_files = image_urls.map { |url| URI.open(url) }

# image_files.each_with_index do |image_file, index|
#   dixit = Game.create(
#     name: "Game #{index + 1}",
#     category: "Board game",
#     description: "This is a sample game description",
#     number_players: 4,
#     day_price: 10,
#     average_duration: 60,
#     user: User.all.sample
#   )

#   attachment = dixit.image.attach(io: image_file, filename: "dixit#{index + 1}.jpg")
#   attachment.analyze
#   attachment.blob.metadata["public_id"] = Cloudinary::Uploader.upload(dixit.image.blob.url, resource_type: :auto)["public_id"]
#   dixit.save

#   Booking.create(
#     user: User.all.sample,
#     game: dixit,
#     start_date: rand(10).days.ago,
#     end_date: rand(5).days.from_now
#   )
# end

require "open-uri"
require "cloudinary"

image_risk = URI.open("https://www.hasbrorisk.com/img/risk-social.jpg")
risk = Game.create(
  name: 'Risk',
  category: 'Board game',
  description: 'A strategy board game of diplomacy, conflict and conquest',
  number_players: 6,
  day_price: 8,
  average_duration: 180,
  user: User.all.sample
)
p risk
risk.image.attach(io: image_risk, filename: "risk.jpg")
risk.image.analyze
risk.image.metadata["public_id"] = Cloudinary::Uploader.upload(risk.image.blob.url, resource_type: :auto)["public_id"]
risk.save

image1 = URI.open("http://www.totaldiplomacy.com/Portals/0/ArticleImages/Risk_init_positions_1.jpg")
image2 = URI.open("https://thumbs.dreamstime.com/z/risk-board-game-cards-dice-tokens-risk-board-game-158612505.jpg")
image3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/8c/Amsterdam_-_Risk_players_-_1136_%28cropped%29.jpg")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
risk.images.attach(io: image1, filename: 'image1.jpg')
risk.images.attach(io: image2, filename: 'image2.jpg')
risk.images.attach(io: image3, filename: 'image3.jpg')

image_codenames = URI.open("https://johnlewis.scene7.com/is/image/JohnLewis/237010234?$rsp-pdp-port-640-82$")
codenames = Game.create(
  name: 'Codenames',
  category: 'Party game',
  description: 'A game of word association and deduction for 2-8 players',
  number_players: 8,
  day_price: 7,
  average_duration: 30,
  user: User.all.sample
)
p codenames
codenames.image.attach(io: image_codenames, filename: "codenames.jpg")
codenames.image.analyze
codenames.image.metadata["public_id"] = Cloudinary::Uploader.upload(codenames.image.blob.url, resource_type: :auto)["public_id"]
codenames.save

image4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Codenames_with_key_card.jpg/800px-Codenames_with_key_card.jpg?20221230002109")
image5 = URI.open("https://www.boardgamehalv.com/wp-content/uploads/2020/11/Codenames_BoardGame_Overview-950x500.jpg")
image6 = URI.open("https://johnlewis.scene7.com/is/image/JohnLewis/237010234alt3?wid=1440&fit=constrain")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
codenames.images.attach(io: image4, filename: 'image4.jpg')
codenames.images.attach(io: image5, filename: 'image5.jpg')
codenames.images.attach(io: image6, filename: 'image5.jpg')

image_catan = URI.open("https://cf.geekdo-images.com/zJOqDVOlBRpYavPwHeOoiQ__imagepagezoom/img/GoKhkSmVoCyv-AP6s5_GHH81r-c=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic1248578.jpg")
catan = Game.create(
  name: 'Catan',
  category: 'Board game',
  description: 'A game of resource management and trading for 3-4 players',
  number_players: 4,
  day_price: 6,
  average_duration: 120,
  user: User.all.sample
)
p catan
catan.image.attach(io: image_catan, filename: "catan.jpg")
catan.image.analyze
catan.image.metadata["public_id"] = Cloudinary::Uploader.upload(catan.image.blob.url, resource_type: :auto)["public_id"]
catan.save

image7 = URI.open("https://i.redd.it/41bpzrvogv701.jpg")
image8 = URI.open("https://i.ebayimg.com/images/g/GDkAAOSwMd9ji6yO/s-l1600.jpg")
image9 = URI.open("https://i.ebayimg.com/images/g/6qYAAOSwzlRji6yN/s-l1600.jpg")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
catan.images.attach(io: image7, filename: 'image7.jpg')
catan.images.attach(io: image8, filename: 'image8.jpg')
catan.images.attach(io: image9, filename: 'image9.jpg')

image_carcassonne = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91Gsuy88dmL._AC_SL1500_.jpg")
carcassonne = Game.create(
  name: 'Carcassonne',
  category: 'Board game',
  description: 'Build a medieval landscape tile by tile, claim landmarks, and score points',
  number_players: 5,
  day_price: 6,
  average_duration: 45,
  user: User.all.sample
)
p carcassonne
carcassonne.image.attach(io: image_carcassonne, filename: "carcassonne.jpg")
carcassonne.image.analyze
carcassonne.image.metadata["public_id"] = Cloudinary::Uploader.upload(carcassonne.image.blob.url, resource_type: :auto)["public_id"]
carcassonne.save

image10 = URI.open("https://preview.redd.it/tyzzakjjt58a1.jpg?width=4032&format=pjpg&auto=webp&v=enabled&s=ce4b9ac39a51fa0ab85c647df7080cb4a38e1d2b")
image11 = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91S21d682HL._AC_SL1500_.jpg")
image12 = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91c1mXyoMWL._AC_SL1500_.jpg")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
carcassonne.images.attach(io: image10, filename: 'image10.jpg')
carcassonne.images.attach(io: image11, filename: 'image11.jpg')
carcassonne.images.attach(io: image12, filename: 'image12.jpg')

image_pandemic = URI.open("https://cdn.shopify.com/s/files/1/0581/7171/9848/products/380_2048x2048.jpg?v=1668081130")
pandemic = Game.create(
  name: 'Pandemic',
  category: 'Board game',
  description: 'Collaborate with other players to prevent global pandemics and save humanity',
  number_players: 4,
  day_price: 7,
  average_duration: 60,
  user: User.all.sample
)
p pandemic
pandemic.image.attach(io: image_pandemic, filename: "pandemic.jpg")
pandemic.image.analyze
pandemic.image.metadata["public_id"] = Cloudinary::Uploader.upload(pandemic.image.blob.url, resource_type: :auto)["public_id"]
pandemic.save

image13 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Pandemic_Legacy_%2833870877603%29.jpg/800px-Pandemic_Legacy_%2833870877603%29.jpg?20211129170022")
image14 = URI.open("https://static.wixstatic.com/media/a37032_c9b019fe6eed41b38635b97792208fc2~mv2.jpeg/v1/fit/w_1000%2Ch_1000%2Cal_c%2Cq_80/file.jpeg")
image15 = URI.open("https://i.ebayimg.com/images/g/77oAAOSwgWxjpnMX/s-l1600.jpg")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
pandemic.images.attach(io: image13, filename: 'image13.jpg')
pandemic.images.attach(io: image14, filename: 'image14.jpg')
pandemic.images.attach(io: image15, filename: 'image15.jpg')

image_ticket_to_ride = URI.open("https://scale.coolshop-cdn.com/product-media.coolshop-cdn.com/AE85FH/5f324844535245bd8e8bb734e8968887.jpg/f/ticket-to-ride-germany.jpg?height=960&transparent=1&borderless=1")
ticket_to_ride = Game.create(
  name: 'Ticket to Ride',
  category: 'Board game',
  description: 'Build your train routes across various cities and fulfill your objectives!',
  number_players: 5,
  day_price: 8,
  average_duration: 45,
  user: User.all.sample
)
p ticket_to_ride
ticket_to_ride.image.attach(io: image_ticket_to_ride, filename: "ticket_to_ride.jpg")
ticket_to_ride.image.analyze
ticket_to_ride.image.metadata["public_id"] = Cloudinary::Uploader.upload(ticket_to_ride.image.blob.url, resource_type: :auto)["public_id"]
ticket_to_ride.save

image16 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Ticket_to_Ride_Rails_%26_Sails.jpg/800px-Ticket_to_Ride_Rails_%26_Sails.jpg?20180203113847")
image17 = URI.open("https://www.boardgamehalv.com/wp-content/uploads/2020/10/TicketToRide_BoardGame_Gameplay-1024x683.jpg")
image18 = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/91tRaRm0t6L._AC_SL1500_.jpg")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
ticket_to_ride.images.attach(io: image16, filename: 'image16.jpg')
ticket_to_ride.images.attach(io: image17, filename: 'image17.jpg')
ticket_to_ride.images.attach(io: image18, filename: 'image18.jpg')

image_betrayal = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/71S4iark8mL._AC_SL1500_.jpg")
betrayal = Game.create(
  name: 'Betrayal at Baldur\'s Gate',
  category: 'Board game',
  description: 'Explore a haunted city and discover its secrets, but beware of betrayal!',
  number_players: 6,
  day_price: 10,
  average_duration: 60,
  user: User.all.sample
)
p betrayal
betrayal.image.attach(io: image_betrayal, filename: "betrayal.jpg")
betrayal.image.analyze
betrayal.image.metadata["public_id"] = Cloudinary::Uploader.upload(betrayal.image.blob.url, resource_type: :auto)["public_id"]
betrayal.save

image19 = URI.open("https://ljofa.files.wordpress.com/2019/10/img_0350.jpg")
image20 = URI.open("https://cdn.vox-cdn.com/thumbor/g_QQBmxEnUA5OTl9s820Fh5RWuU=/0x0:1800x1200/920x0/filters:focal(0x0:1800x1200):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/9358171/_MG_1663.jpg")
image21 = URI.open("https://cdn.shopify.com/s/files/1/0640/9309/4127/products/image_fa0889dd-db95-4ee7-acb7-0611bcb800de.heic?v=1666933236&width=1445")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
betrayal.images.attach(io: image19, filename: 'image19.jpg')
betrayal.images.attach(io: image20, filename: 'image20.jpg')
betrayal.images.attach(io: image21, filename: 'image21.jpg')

image_splendor = URI.open("https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__imagepagezoom/img/abVemxrrJsK7-EpTXYwk7hJiSX0=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic1904079.jpg")
splendor = Game.create(
  name: 'Splendor',
  category: 'Board game',
  description: 'Collect gems and purchase cards to become the most influential merchant!',
  number_players: 4,
  day_price: 6,
  average_duration: 30,
  user: User.all.sample
)
p splendor
splendor.image.attach(io: image_splendor, filename: "splendor.jpg")
splendor.image.analyze
splendor.image.metadata["public_id"] = Cloudinary::Uploader.upload(splendor.image.blob.url, resource_type: :auto)["public_id"]
splendor.save

image22 = URI.open("https://s3-b3bucket.s3.eu-west-2.amazonaws.com/wp-content/uploads/2022/11/07104501/thumbnail_IMG_8832-e1667818072432.jpg")
image23 = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/919be-11deS._AC_SL1500_.jpg")
image24 = URI.open("https://images.squarespace-cdn.com/content/v1/5a76081a9f8dce42c4768ba0/1669418902846-YSXPT27A5VK6JLGVDGHC/backSplendorbox.jpg?format=750w")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
splendor.images.attach(io: image22, filename: 'image22.jpg')
splendor.images.attach(io: image23, filename: 'image23.jpg')
splendor.images.attach(io: image24, filename: 'image24.jpg')

image_dominion = URI.open("https://cf.geekdo-images.com/OGOmpi0GgwOwH2y28QgkuA__imagepagezoom/img/mXi-QU13Ww3bUzeyfCTGeeSYPyY=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic460011.jpg")
dominion = Game.create(
  name: 'Dominion',
  category: 'Card game',
  description: 'As a monarch, players must balance building their kingdom, conducting commerce, and defending it against attacks',
  number_players: 4,
  day_price: 6,
  average_duration: 45,
  user: User.all.sample
)
p dominion
dominion.image.attach(io: image_dominion, filename: "dominion.jpg")
dominion.image.analyze
dominion.image.metadata["public_id"] = Cloudinary::Uploader.upload(dominion.image.blob.url, resource_type: :auto)["public_id"]
dominion.save

image25 = URI.open("https://media.printables.com/media/prints/46290/images/460632_f983d1f8-1f27-4e83-8dbe-14b8efa05d0a/thumbs/cover/1200x630/jpg/dominion-lazy-susan-4b.jpg")
image26 = URI.open("https://www.ultraboardgames.com/dominion/gfx/tips.jpg")
image27 = URI.open("https://online.fliphtml5.com/dqxm/qxlo/files/large/1.jpg")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
dominion.images.attach(io: image25, filename: 'image25.jpg')
dominion.images.attach(io: image26, filename: 'image26.jpg')
dominion.images.attach(io: image27, filename: 'image27.jpg')

image_dixit = URI.open("https://cf.geekdo-images.com/BZzaey2sQE406fjaqX3uRQ__imagepagezoom/img/VXHN3dvHyvwFMDyCcFP2I15jp1s=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6652776.jpg")
dixit = Game.create(
  name: 'Dixit',
  category: 'Card game',
  description: 'By participating in this game, your imagination will be displayed',
  number_players: 4,
  day_price: 5,
  average_duration: 30,
  user: User.all.sample
)
p dixit
dixit.image.attach(io: image_dixit, filename: "dixit.jpg")
dixit.image.analyze
dixit.image.metadata["public_id"] = Cloudinary::Uploader.upload(dixit.image.blob.url, resource_type: :auto)["public_id"]
dixit.save

image28 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Dixit_game_0001.jpg/800px-Dixit_game_0001.jpg")
image29 = URI.open("https://www.boardgamehalv.com/wp-content/uploads/2020/05/Dixit_BoardGame_Overview-1050x600.jpg")
image30 = URI.open("https://i.otto.de/i/otto/4a6dd53a-1055-52e9-b9b4-811493335aca?w=1010&h=1010")
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end
dixit.images.attach(io: image28, filename: 'image28.jpg')
dixit.images.attach(io: image29, filename: 'image29.jpg')
dixit.images.attach(io: image30, filename: 'image30.jpg')

puts "Games & Booking Created"
puts 'Finished!'
