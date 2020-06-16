# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "1. Creating users..."

User.create(first_name: "Alejandro", last_name: "Bringas", email: "alejandro@mail.com", password: "123456")
User.create(first_name: "Nicolas", last_name: "Capalbo", email: "nicolas@mail.com", password: "123456")
User.create(first_name: "David", last_name: "Ibañez", email: "david@mail.com", password: "123456")
User.create(first_name: "Francesco", last_name: "Biedermann", email: "francesco@mail.com", password: "123456")

puts "2. Creating tools..."

20.times { Tool.create( name: Faker::Construction.heavy_equipment, description: "Some details", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))}

puts "3. Process completed"
