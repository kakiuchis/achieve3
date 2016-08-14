# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  email = Faker::Internet.email
  name = "name#{n+1}"
  password = "password"
  User.create!(email: email,
               name: name,
               password: password,
               password_confirmation: password,
               uid: "rvfzetrgestgrrtsdbget#{n+1}",
               provider: ""
               )
end

10.times do |n|
  Blog.create!(title: "title#{n+1}",
               content: "content#{n+1}",
               user_id: "#{n+1}"
               )
end


