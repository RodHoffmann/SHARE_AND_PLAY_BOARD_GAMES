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

require "open-uri"
require "cloudinary"
image_file = URI.open("https://cf.geekdo-images.com/BZzaey2sQE406fjaqX3uRQ__imagepagezoom/img/VXHN3dvHyvwFMDyCcFP2I15jp1s=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic6652776.jpg")
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
dixit.image.attach(io: image_file, filename: "dixit.jpg")
dixit.image.analyze
dixit.image.metadata["public_id"] = Cloudinary::Uploader.upload(dixit.image.blob.url, resource_type: :auto)["public_id"]
dixit.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://www.hasbrorisk.com/img/risk-social.jpg")
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
risk.image.attach(io: image_file, filename: "risk.jpg")
risk.image.analyze
risk.image.metadata["public_id"] = Cloudinary::Uploader.upload(risk.image.blob.url, resource_type: :auto)["public_id"]
risk.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://johnlewis.scene7.com/is/image/JohnLewis/237010234?$rsp-pdp-port-640-82$")
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
codenames.image.attach(io: image_file, filename: "codenames.jpg")
codenames.image.analyze
codenames.image.metadata["public_id"] = Cloudinary::Uploader.upload(codenames.image.blob.url, resource_type: :auto)["public_id"]
codenames.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://cf.geekdo-images.com/zJOqDVOlBRpYavPwHeOoiQ__imagepagezoom/img/GoKhkSmVoCyv-AP6s5_GHH81r-c=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic1248578.jpg")
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
catan.image.attach(io: image_file, filename: "catan.jpg")
catan.image.analyze
catan.image.metadata["public_id"] = Cloudinary::Uploader.upload(catan.image.blob.url, resource_type: :auto)["public_id"]
catan.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://www.boardgamequest.com/wp-content/uploads/2013/05/Carcassonne-Box-Cover.jpg")
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
carcassonne.image.attach(io: image_file, filename: "carcassonne.jpg")
carcassonne.image.analyze
carcassonne.image.metadata["public_id"] = Cloudinary::Uploader.upload(carcassonne.image.blob.url, resource_type: :auto)["public_id"]
carcassonne.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://cdn.shopify.com/s/files/1/0581/7171/9848/products/380_2048x2048.jpg?v=1668081130")
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
pandemic.image.attach(io: image_file, filename: "pandemic.jpg")
pandemic.image.analyze
pandemic.image.metadata["public_id"] = Cloudinary::Uploader.upload(pandemic.image.blob.url, resource_type: :auto)["public_id"]
pandemic.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://scale.coolshop-cdn.com/product-media.coolshop-cdn.com/AE85FH/5f324844535245bd8e8bb734e8968887.jpg/f/ticket-to-ride-germany.jpg?height=960&transparent=1&borderless=1")
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
ticket_to_ride.image.attach(io: image_file, filename: "ticket_to_ride.jpg")
ticket_to_ride.image.analyze
ticket_to_ride.image.metadata["public_id"] = Cloudinary::Uploader.upload(ticket_to_ride.image.blob.url, resource_type: :auto)["public_id"]
ticket_to_ride.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/71S4iark8mL._AC_SL1500_.jpg")
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
betrayal.image.attach(io: image_file, filename: "betrayal.jpg")
betrayal.image.analyze
betrayal.image.metadata["public_id"] = Cloudinary::Uploader.upload(betrayal.image.blob.url, resource_type: :auto)["public_id"]
betrayal.save
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

image_file = URI.open("https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__imagepagezoom/img/abVemxrrJsK7-EpTXYwk7hJiSX0=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic1904079.jpg")
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
splendor.image.attach(io: image_file, filename: "splendor.jpg")
splendor.image.analyze
splendor.image.metadata["public_id"] = Cloudinary::Uploader.upload(splendor.image.blob.url, resource_type: :auto)["public_id"]
splendor.save

image_file = URI.open("https://cf.geekdo-images.com/OGOmpi0GgwOwH2y28QgkuA__imagepagezoom/img/mXi-QU13Ww3bUzeyfCTGeeSYPyY=/fit-in/1200x900/filters:no_upscale():strip_icc()/pic460011.jpg")
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
dominion.image.attach(io: image_file, filename: "dominion.jpg")
dominion.image.analyze
dominion.image.metadata["public_id"] = Cloudinary::Uploader.upload(dominion.image.blob.url, resource_type: :auto)["public_id"]
dominion.save

puts "Games & Booking Created"
puts 'Finished!'
