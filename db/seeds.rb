# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "1.Cleaning database..."
Tool.destroy_all

puts "2.Creating tools..."
screwdriver = { name: "Screwdriver", description: "best screwdriver in the world", price: "5" }
hammer = { name: "Hammer", description: "best hammer in the world", price: "3" }

counter = 3
[ screwdriver, hammer].each do |attributes|
  tool = Tool.create!(attributes)
  puts "#{counter += 1} - Created #{tool.name}"
end
puts "#{counter + 1}- Finished!"
