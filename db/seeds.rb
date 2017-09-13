# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Owner1 = Owner.create({
  name: "andy"
  })

restaurant1 = Restaurant.create({
  name: "andy's tacos",
  cuisine_style: "mexican",
  price_range: 4,
  email: "andy8tran@gmail.com",
  phone_number: "3412342344",
  address: "234 asdkflj st",
  capacity: 234,
  owner_id: 1
  })

Owner2 = Owner.create({
  name: "lobsang"
  })

restaurant2 = Restaurant.create({
  name: "lobsang's restaurant2 ",
  cuisine_style: "asdfjka;dfjkl ",
  price_range: 3,
  email: "asdfjhjksdf",
  phone_number: "sefwerasdf",
  address: "asdfjklsdfjklsdfjkl",
  capacity: 20,
  owner_id: 2
  })

Seating1 = Seating.create({
  start_hour:0,
  restaurant_id: 1
  })
Seating2 = Seating.create({
  start_hour:0,
  restaurant_id: 2
  })

rez1 = Reservation.create({
  seating_id: 1,
  email: "andy",
  party_size: 200
  })
