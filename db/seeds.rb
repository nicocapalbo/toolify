# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "1. Cleaning db.."

Booking.destroy_all
Tool.destroy_all
User.destroy_all

puts "2. Creating users..."

User.create(first_name: "Alejandro", last_name: "Bringas", email: "alejandro@mail.com", password: "123456")
User.create(first_name: "Nicolas", last_name: "Capalbo", email: "nicolas@mail.com", password: "123456")
User.create(first_name: "David", last_name: "Ibañez", email: "david@mail.com", password: "123456")
User.create(first_name: "Francesco", last_name: "Biedermann", email: "francesco@mail.com", password: "123456")

puts "3. Creating tools..."

puts "1"
file = URI.open('https://imgaz1.staticbg.com/thumb/large/oaupload/banggood/images/B9/D0/2605c729-ebc9-475e-ac91-02a26fff3520.jpg')
tool = Tool.create!(name: "Cordless Drill", description: "A cordless drill (or power drill) is an electric drill with rechargeable batteries and it is the most common item in any garage, construction site, or workshop.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'cordless_drill.jpg', content_type: 'image/jpg')
puts "2"
file = URI.open('https://images.homedepot-static.com/productImages/dfde98d2-ba46-442d-8c21-66bc014e4e77/svn/ryobi-impact-drivers-p238-64_1000.jpg')
tool = Tool.create!(name: "Impact Driver", description: "An impact driver looks much like the cordless drill, but this tool uses a hammering like action and brute force to get your jobs done", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'impact_drive.jpg', content_type: 'image/jpg')
puts "3"
file = URI.open('https://images.ffx.co.uk/tools/061124A070.jpg')
tool = Tool.create!(name: "Hammer Drill", description: "A hammer drill is sometimes referred to as a percussion drill and is in the power tool category for machines that can drill into hard materials.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'hammer_drill.jpg', content_type: 'image/jpg')
puts "4"
file = URI.open('https://sydneytools.com.au/assets/images/products/1/4/9/6/14964/62FFFD1CEAF9ABAFCE29EA995CD6E153A7A242FA266123A1C9353B9E695FC07C.jpeg')
tool = Tool.create!(name: "Rotary Hammer", description: "In the line of construction power tools, the rotary hammer is one that will perform your heavy-duty jobs such as chiseling and drilling into hard materials. It is much like the hammer drill as it also pounds its drill bit in and out as it spins.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'rotary_hammer.jpg', content_type: 'image/jpg')
puts "5"
file = URI.open('https://www.powertoolworld.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/e/dewdcf899n1_1.jpg')
tool = Tool.create!(name: "Impact Wrench", description: "The impact wrench also called an impact gun is a power tool designed to give you high torque output using minimal physical exertion.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'impact_wrench.jpg', content_type: 'image/jpg')
puts "6"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51hx%2BNQ-XnL._AC_SY400_.jpg')
tool = Tool.create!(name: "Electric Screwdriver", description: "An electric screwdriver combines motors and batteries and is one extremely useful, compact tool.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'e_screwdriver.jpg', content_type: 'image/jpg')
puts "7"
file = URI.open('https://mobileimages.lowes.com/product/converted/080596/080596054366.jpg')
tool = Tool.create!(name: "Rotary Tool", description: "A rotary tool is a small handheld power tool that uses a rotary tip and will hold a variety of attachments to perform a number of tasks.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'rotary_tool.jpg', content_type: 'image/jpg')
puts "8"
file = URI.open('https://www.angliatoolcentre.co.uk/uploads/images/products/dewalt-dcs334n-18v-brushless-jigsaw-body-only-pid48803_1.jpg')
tool = Tool.create!(name: "Jigsaw", description: "A jigsaw is a small power tool that is used for cutting curved lines in wood and other materials.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'jigsaw.jpg', content_type: 'image/jpg')
puts "9"
file = URI.open('https://images.homedepot-static.com/productImages/e3fada2d-8c8a-41d5-a5f7-8466f6c1b1ed/svn/ryobi-reciprocating-saws-p517-64_1000.jpg')
tool = Tool.create!(name: "Reciprocating Saw", description: "A reciprocating saw is a machine-powered saw with a cutting action that is achieved by a push and pull motion of the blade.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'recip_saw.jpg', content_type: 'image/jpg')
puts "10"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71RdFLNY-XL._AC_SX466_.jpg')
tool = Tool.create!(name: "Circular Saw", description: "The power tool known as the circular saw uses an abrasive or toothed disc or blade to make different cuts in material with a rotary motion that spins around an arbor.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'circ_saw.jpg', content_type: 'image/jpg')
puts "11"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71rNe6Z%2BTNL._AC_SL1500_.jpg')
tool = Tool.create!(name: "Miter Saw", description: "A power tool saw, the miter saw, also known as the drop saw is used to make accurate crosscuts in your project at the desired angle.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'mit_saw.jpg', content_type: 'image/jpg')
puts "12"
file = URI.open('https://images.homedepot-static.com/productImages/a87f7623-1bd1-4cdd-8bcf-deb3087a2a6c/svn/ryobi-stationary-band-saws-bs904g-64_1000.jpg')
tool = Tool.create!(name: "Band Saw", description: "A band saw is a fixed power tool that has a sharp, long blade that has a continuous band of toothed metal that is stretched between two or more wheels and cuts materials.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'band_saw.jpg', content_type: 'image/jpg')
puts "13"
file = URI.open('https://images.homedepot-static.com/productImages/d1e82fd0-8d83-4db7-bcba-07119f9c79eb/svn/dewalt-portable-table-saws-dwe7485-64_1000.jpg')
tool = Tool.create!(name: "Table Saw", description: "A table saw is a fixed power tool sometimes referred to as a bench saw or sawbench and is considered a woodworking tool.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'table_saw.jpg', content_type: 'image/jpg')
puts "14"

file = URI.open('https://www.walfins.co.uk/wp-content/uploads/2015/04/p-312-stihlMS250.jpg')
tool = Tool.create!(name: "Chainsaw", description: "The chain saw is a mechanical, portable saw which uses a set of teeth that are attached to a rotating chain.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'chainsaw.jpg', content_type: 'image/jpg')

puts "15"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/61QtGLW%2BDLL._AC_SL1500_.jpg')
tool = Tool.create!(name: "Biscuit Joiner", description: "In the line of power tools, the biscuit joiner, or plate joiner is a woodworking tool most often used to join two pieces of wood.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'joiner.jpg', content_type: 'image/jpg')

puts "16"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81QmMHUuMpL._AC_SL1500_.jpg')
tool = Tool.create!(name: "Angle Grinder", description: "An angle grinder is sometimes called a disc grinder or side grinder and is a portable hand power tool. It is used to grind and polish, and although designed as a tool for rigid abrasive discs, it has an interchangeable source of power that allows for a wide variety of attachments and cutters.", location: "", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'angle_grinder.jpg', content_type: 'image/jpg')

puts "17"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/81GDJbhEemL._AC_SL1500_.jpg')
tool = Tool.create!(name: "Bench Grinder", description: "A bench grinder is a form of grinding machine that uses abrasive wheels.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'bench_grinder.jpg', content_type: 'image/jpg')

puts "23"
file = URI.open('https://eastern.rooftraining.co.uk/wp-content/uploads/Paslode-800x800.jpg')
tool = Tool.create!(name: "Nail Gun", description: "A nail gun is a tool that is used to drive a nail into wood or other materials. It is also called a nail finisher, framing nailer or nailer.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'nail_gun.jpg', content_type: 'image/jpg')

puts "24"
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/715bxH8p8OL._AC_SY355_.jpg')
tool = Tool.create!(name: "Air Compressor", description: "An air compressor is a device or machine that is used in a variety of jobs. Generally, they are able to power a variety of useful air tools.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'air_compressor.jpg', content_type: 'image/jpg')

puts "25"
file = URI.open('https://images.homedepot-static.com/productImages/5ff97949-52e4-460e-b1b6-62a71c82adc0/svn/general-tools-moisture-meter-mmd4e-64_1000.jpg')
tool = Tool.create!(name: "Moisture Meter", description: "Moisture meters are essential in a lot of industries to detect moisture content in materials.", location: "Barcelona", price: rand(1..20), user_id: rand(1..4))
tool.photo.attach(io: file, filename: 'moisture_meter.jpg', content_type: 'image/jpg')

puts "4. Process completed"
