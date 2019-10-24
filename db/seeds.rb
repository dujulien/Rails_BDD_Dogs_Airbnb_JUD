# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

 # Create cities
 20.times do
 	City.create(city_name: Faker::Address.city)
 end

# Create entries for dogsitter table
 10.times do 
 	Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: City.find(rand(1..20)))
 end

# Create entries for dogsitter table
 50.times do 
 	Dog.create(dog_name: Faker::Creature::Dog.name, city: City.find(rand(1..20)))
 end

  # Create entries for strolls table with relations between dogsitters, and dogs
 300.times do 
 	Stroll.create(date: Faker::Date.between(from: 2.days.ago, to: Date.today), dog: Dog.find(rand(1..50)), dogsitter: Dogsitter.find(rand(1..10)), city: City.find(rand(1..20)))
 end
