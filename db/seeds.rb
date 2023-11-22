# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants_data = [
  { name: "George's Cat", address: "123 Main St", category: "italian", phone_number: "123456789", },
  { name: "Shed: Sheddan", address: "456 Palatine St", category: "french", phone_number: "123456789"},
  { name: "Juno", address: "208 Bennett St", category: "korean", phone_number: "123456789"},
  { name: "Mela", address: "101 Beloit St", category: "chinese", phone_number: "123456789"},
  { name: "Bentley's", address: "123 Marina St", category: "japanese", phone_number: "123456789"}
]

restaurants_data.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
