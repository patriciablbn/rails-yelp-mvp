# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

puts "Creating restaurants..."
omg = { name: "你好", address: "1 rue Oberkampf", category: "chinese" }
buongiorno =  { name: "Buongiorno", address: "2 rue Oberkampf", category: "italian" }
olala = { name: "こんにちは", address: "3 rue Oberkampf", category: "japanese" }
bonjour = { name: "Bonjour", address: "4 rue Oberkampf", category: "french" }
goedemorgen = { name: "Goedemorgen", address: "5 rue Oberkampf", category: "belgian" }

[omg, buongiorno, olala, bonjour, goedemorgen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
