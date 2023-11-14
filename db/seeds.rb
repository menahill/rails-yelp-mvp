# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
oporto = {name: "Oporto", address: "7 Hunter street", phone_number: "04340000", category: "chinese"}
pizza_hut =  {name: "Pizza Hut", address: "56A chatswood Chase", phone_number: "04560000", category:"italian"}
ogalo = {name: "Ogalo", address: "7 Killara, NSW",  phone_number: "1234678", category:"japanese"}
chachus = {name: "Chachus", address: "74 Hornsby rd, NSW", phone_number: "03456788", category:"french"}
korean_bbq = {name: "Korean BBQ", address: "7 Boundary St, Roseville", phone_number: "02345788", category:"belgian"}

[oporto, pizza_hut, ogalo, chachus, korean_bbq].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
