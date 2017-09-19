# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create({
       name:"andy",
       password:"andy",
       email:"andy8tran@gmail.com",
       password_confirmation:"andy"
       })

restaurant1 = Restaurant.create(
 name: "andy's tacos",
 cuisine_style: "mexican",
 price_range: 4,
 email: "andy8tran@gmail.com",
 phone_number: 3412342344,
 address: "234 asdkflj st",
 capacity: 234,
 description: "Best tacos in town!",
 seating_times:"6,8,10",
 user_id: 1
 )

 
