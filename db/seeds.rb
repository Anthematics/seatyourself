# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create({
  name:"Josh taco ",
  password:"octopus",
  email:"joshtaco@taco.taco",
  password_confirmation:"octopus"
  })
user2 = User.create({
    name:"david chicken",
    password:"octopus",
    email:"david@david",
    password_confirmation:"octopus"
    })

restaurant1 = Restaurant.create({
  name: "andy's tacos",
  cuisine_style: "mexican",
  price_range: 4,
  email: "andy8tran@gmail.com",
  phone_number: "3412342344",
  address: "234 asdkflj st",
  capacity: 234,
  user_id:1,
  seating_times:[6,8,10]
  })


restaurant2 = Restaurant.create({
  name: "lobsang's restaurant2 ",
  cuisine_style: "asdfjka;dfjkl ",
  price_range: 3,
  email: "asdfjhjksdf",
  phone_number: "sefwerasdf",
  address: "asdfjklsdfjklsdfjkl",
  capacity: 20,
  user_id: 2,
  seating_times:[6,8,10]
  })
