# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:


Gear.destroy_all

Booking.destroy_all
User.destroy_all

user_1 = User.create!(
  first_name:"Victor",
  last_name:"Dup",
  password:"password",
  email:"test@test.fr",
  post_code:"30300",
  telephone:"0139357157"
)

user_2 = User.create!(
  first_name:"Victoire",
  last_name:"Dup",
  password:"password",
  email:"tast@test.fr",
  post_code:"30300",
  telephone:"0139357157"
)

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
  },
  {
    gear_type: "board",
    year: 2015,
    brand: "Cabrinha",
    daily_price: 2000,
    size: '139 cm',
    model: 'XO',
    description: 'Ok',
    user: user_2,
    start_date: Date.tomorrow,
    end_date: Date.tomorrow+10,
  },
]

gears = Gear.create!(gears)
urls = [
  'http://img.clubic.com/08254724-photo-xbox-console.jpg',
  'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
]
gears.each do |gear|
  gear.photo_urls = urls
end

puts "#{Gear.count} gears created"

