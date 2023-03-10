# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
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
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

risk = Game.create(
  name: 'Risk',
  category: 'Strategy game',
  description: 'A classic game of global domination',
  number_players: 6,
  day_price: 8,
  average_duration: 120,
  user: User.all.sample
)
p risk
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

codenames = Game.create(
  name: 'Codenames',
  category: 'Word game',
  description: 'A game of word association and deduction',
  number_players: 8,
  day_price: 6,
  average_duration: 45,
  user: User.all.sample
)
p codenames
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

catan = Game.create(
  name: 'Catan',
  category: 'Strategy game',
  description: 'A game of building settlements and trading resources',
  number_players: 4,
  day_price: 10,
  average_duration: 90,
  user: User.all.sample
)
p catan
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

carcassonne = Game.create(
  name: 'Carcassonne',
  category: 'Tile-laying game',
  description: 'A game of building a medieval landscape',
  number_players: 5,
  day_price: 7,
  average_duration: 60,
  user: User.all.sample
)
p carcassonne
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

pandemic = Game.create(
  name: 'Pandemic',
  category: 'Cooperative game',
  description: 'A game of saving the world from disease',
  number_players: 4,
  day_price: 8,
  average_duration: 60,
  user: User.all.sample
)
p pandemic
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

ticket_to_ride = Game.create(
  name: 'Ticket to Ride',
  category: 'Strategy game',
  description: 'A game of building train routes across North America',
  number_players: 5,
  day_price: 9,
  average_duration: 75,
  user: User.all.sample
)
p ticket_to_ride
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

betrayal = Game.create(
  name: 'Betrayal at Baldur\'s Gate',
  category: 'Horror game',
  description: 'A game of exploring a haunted city and surviving supernatural threats',
  number_players: 6,
  day_price: 11,
  average_duration: 90,
  user: User.all.sample
)
p betrayal
rand(5).times do
  start = rand(10).days.ago
  Booking.create(
    user: User.all.sample,
    game: Game.last,
    start_date: start,
    end_date: start + rand(5).days
  )
end

splendor = Game.create(
  name: 'Splendor',
  category: 'Strategy game',
  description: 'A game of collecting gems and building a jewelry empire',
  number_players: 4,
  day_price: 6,
  average_duration: 30,
  user: User.all.sample
)
p splendor

dominion = Game.create(
  name: 'Dominion',
  category: 'Deck-building game',
  description: 'A game of building a deck of cards and gaining victory points',
  number_players: 4,
  day_price: 7,
  average_duration: 45,
  user: User.all.sample
)
p dominion

puts "Games & Booking Created"
puts 'Finished!'
