# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating xx fake restaurants...'
11.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    stars: rand(0..5),
    category: 'japanese',
    phone_number: '666-666-666'
  )
  restaurant.save!
end
puts 'Finished!'

# puts 'Creating xx fake reviews...'
# 11.times do
#   review = Review.new(
#     rating:  rand(0..5),
#     Faker::Restaurant.review
#   )
#   review.save!
# end
# puts 'Finished!'
