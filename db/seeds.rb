# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the db...'

Cocktail.destroy_all

puts 'db is clean'

puts 'creating drinks...'

10.times do
  cocktail = Cocktail.create(
    name: Faker::Restaurant.name
  )
  puts "#{cocktail.id}-#{cocktail.name} was created"
end
