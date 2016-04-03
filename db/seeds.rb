# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Wayne Gretzkey",
             email: "wayne@kings.com",
             profile_pic: "no-profile.png",
             password: "hamsandwich",
             password_confirmation: "hamsandwich")

99.times do |n|
  name = Faker::Name.name
  email = "beer-#{n+1}@beermaps.com"
  password = "hamsandwich"
  pic = "no-profile.png"
  User.create!(name: name,
               email: email,
               profile_pic: pic,
               password: password,
               password_confirmation: password)
end

Store.create!(name: "Denver Beer Co",
              email: "NULL",
              address: "1695 Platte St",
              city: "Denver",
              state: "Colorado",
              lat: 39.75823,
              lng: -105.00711,
              store_type: "devdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 1)
