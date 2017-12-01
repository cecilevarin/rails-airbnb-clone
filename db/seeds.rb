# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


Gear.destroy_all

Booking.destroy_all
User.destroy_all
puts 'creating users...'
user_1 = User.create!(
  first_name:"Victor",
  last_name:"Dup",
  password:"password",
  email:"test@test.fr",
  post_code:"30300",
  telephone:"0139357157"
)

user_2 = User.create!(
  first_name:"Nicolas",
  last_name:"Dup",
  password:"password",
  email:"tast@test.fr",
  post_code:"30300",
  telephone:"0139357157"
)

user_3 = User.create!(
  first_name:"Clément",
  last_name:"Bot",
  password:"password",
  email:"tist@test.fr",
  post_code:"13006",
  telephone:"0139357157"
)

user_4 = User.create!(
  first_name:"Nicolas",
  last_name:"Top",
  password:"password",
  email:"tust@test.fr",
  post_code:"13006",
  telephone:"0139357157"
)

puts "#{User.count} users created"

def seed_photo(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}"))
end



gears = [
  {
    gear_type: "kite",
    year: 2015,
    brand: "Cabrinha",
    daily_price: 5000,
    size: '7m2',
    model: 'Switchblade',
    description: 'State ok',
    user: user_1,
    start_date: Date.tomorrow,
    end_date: Date.tomorrow+10,
    photos: seed_photo('CabrinhaSwitchBlade2015.png')
  },
  {
    gear_type: "kite",
    year: 2014,
    brand: "North",
    daily_price: 4000,
    size: '10m2',
    model: 'Evo',
    description: 'One litte patch',
    user: user_2,
    start_date: Date.tomorrow,
    end_date: Date.tomorrow+10,
    photos: seed_photo('NorthEvo2014.jpg')
  },
  {
    gear_type: "board",
    year: 2015,
    brand: "Cabrinha",
    daily_price: 2000,
    size: '139 cm',
    model: 'XO',
    description: 'Ok',
    user: user_1,
    start_date: Date.tomorrow,
    end_date: Date.tomorrow+10,
    photos: seed_photo('CabrinhaXOBoard2015.jpg')
  },
  {
    gear_type: "kite",
    year: 2014,
    brand: "F-One",
    daily_price: 5500,
    size: "8m2",
    model: "Bandit",
    description: "Almost new",
    user: user_3,
    start_date: Date.parse('22/11/2017'),
    end_date: Date.parse('04/04/2018'),
    photos: seed_photo('FOneBandit2014.jpg')
  },
  {
    gear_type: "board",
    year: 2013,
    brand: "North",
    daily_price: 3000,
    size: "140cm",
    model: "Woohoo",
    description: "A few litte strips below the board but you will have great wave surfing with it",
    user: user_2,
    start_date: Date.parse('30/11/2017'),
    end_date: Date.parse('09/04/2018'),
    photos: seed_photo('NorthWhoohooBoard.png')
  },
  {
    gear_type: "kite",
    year: 2017,
    brand: "Slingshot",
    daily_price: 8000,
    size: "10m2",
    model: "RPM",
    description: "You will have fun with this one!",
    user: user_3,
    start_date: Date.tomorrow+10,
    end_date: Date.tomorrow+50,
    photos: seed_photo('SlingshotRPM.jpg')
  },
]
puts 'creating gear'
gears = Gear.create!(gears)
puts "#{Gear.count} gears created"
# urls = [
#   'http://res.cloudinary.com/totor/image/upload/v1512063466/CabrinhaXOBoard2015_kkuody.jpg',
#   'http://res.cloudinary.com/totor/image/upload/v1512063463/CabrinhaSwitchBlade2015_plvq7z.png'
# ]
# gears.each do |gear|
#   gear.photo_urls = urls
# end
# gears[0].photos =
# gears[2].photos =


