# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Restaurants are being destroyed'
Restaurant.destroy_all

random_restaurant = %w[chinese italian japanese french belgian].sample

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.city
  phone = Faker::PhoneNumber.phone_number_with_country_code
  random_restaurant = %w[chinese italian japanese french belgian].sample

  Restaurant.create(name: name, address: address, phone_number: phone, category: random_restaurant)

  puts "Restaurant #{name} created!"
end

puts 'All restaurants created'
