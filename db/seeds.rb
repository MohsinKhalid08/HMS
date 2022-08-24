# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeding..."
user = User.new
user.name = 'Muskan Zehra'
user.email = 'muskan@gmail.com'
user.password = '123456'
user.password_confirmation = '123456'
user.phone = '0302-3432321'
user.emergencycontact = '0324-3265435'
user.usertype='admin'
user.save!

#User.create(name: "Muskan Zehra", email: "muskan@gmail.com", password: "123456", password_confirmation: "123456", phone: "0302-3432321", emergencycontact: "0334-3432321", user_type: "admin")
puts "seeding done..."
