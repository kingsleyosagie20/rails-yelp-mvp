# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
spoons_cafe = { name: 'spoons cafe', address: 'Address 13 john street', category: 'chinese' }
weird_eater = { name: 'weird eater', address: '420 UFO street, space city, mars', category: 'italian' }
mystery_meat_cafe = { name: 'mystery meat cafe', address: '7467 enigma avenue', category: 'japanese' }
whisker_delights_eatery =  { name: 'whisker delights eatery', address: '101 feline lane', category: 'french' }
sizzle_slime_cafe =  { name: 'sizzle slime cafe', address: '763 slimy street', category: 'belgian' }

[spoons_cafe, weird_eater, mystery_meat_cafe, whisker_delights_eatery, sizzle_slime_cafe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
