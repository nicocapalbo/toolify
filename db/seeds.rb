# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "1.Cleaning database..."
Tool.destroy_all
User.destroy_all

puts "2.Creating users..."
david = User.create(first_name: "David", last_name: "Ibañez", email: "david@gmail.com", password: "123456")
ale = User.create(first_name: "Ale", last_name: "Bringas", email: "ale@gmail.com", password: "123456")

puts "3.Creating tools..."
screwdriver = { name: "Screwdriver", description: "best screwdriver in the world", price: 5}
hammer = { name: "Hammer", description: "best hammer in the world", price: 3 }
saw = { name: "Saw", description: "best saw in the world", price: 4 }
key = { name: "Key", description: "best key in the world", price: 2 }

counter = 3
[ screwdriver, hammer, saw, key].each do |attributes|
  tool = Tool.new(attributes)
  tool.user = User.all.sample
  tool.save
  puts "#{counter += 1} - Created #{tool.name}"
end
puts "#{counter + 1}- Finished!"
