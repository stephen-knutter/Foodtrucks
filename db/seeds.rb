# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Wayne Gretzkey",
             email: "wayne-gretz@kings.com",
             password: "hamsandwich",
             password_confirmation: "hamsandwich")

99.times do |n|
  name = Faker::Name.name
  email = "beer-#{n+1}@beermaps.com"
  password = "hamsandwich"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end


Map.create!(
  city: 'Denver',
  state: 'CO',
  lat: 39.742043,
  lng: -104.991531,
  slug: 'denver'
)

Map.create!(
  city: 'Los Angeles',
  state: 'CA',
  lat: 34.052006,
  lng: -118.243682,
  slug: 'los-angeles'
)

Map.create!(
  city: 'San Francisco',
  state: 'CA',
  lat: 37.774755,
  lng: -122.419302,
  slug: 'san-francisco'
)

Map.create!(
  city: 'San Jose',
  state: 'CA',
  lat: 37.338077,
  lng: -121.886315,
  slug: 'san-jose'
)

Map.create!(
  city: 'Portland',
  state: 'OR',
  lat: 45.522935,
  lng: -122.676365,
  slug: 'portland'
)

Map.create!(
  city: 'Chicago',
  state: 'IL',
  lat: 41.878193,
  lng: -87.629721,
  slug: 'chicago'
)

# DENVER STORES

Store.create!(name: "Hey PB&J",
              email: "pbnj@truck.com",
              address: "1139 Morrison Rd",
              city: "Morrison",
              state: "Colorado",
              lat: 39.653532,
              lng: -105.178986,
              store_type: "devdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 1)
Store.create!(name: "5280 Sliders",
              email: "info@5280sliders.com",
              address: "3242 E Colfax Ave",
              city: "Denver",
              state: "Colorado",
              lat: 39.739885,
              lng: -104.948552,
              store_type: "devdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 1)
Store.create!(name: "The Cluck Truck",
              email: "theclucktruck@gmail.com",
              address: "1400 S Sheridan Blvd",
              city: "Denver",
              state: "Colorado",
              lat: 39.691292,
              lng: -105.053051,
              store_type: "devdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 1)
Store.create!(name: "The Buscuit Bus",
              email: "denver@biscuts.com",
              address: "3237 E Colfax Ave",
              city: "Denver",
              state: "Colorado",
              lat: 39.740116,
              lng: -104.94911,
              store_type: "devdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 1)
Store.create!(name: "Pinche Tacos",
              email: "info@pinche.com",
              address: "3300 W 32nd Ave",
              city: "Denver",
              state: "Colorado",
              lat: 39.740116,
              lng: -104.94911,
              store_type: "devdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 1)

# LOS ANGELES STORES

Store.create!(name: "Cousins Maine Lobster",
              email: "cousins@truck.com",
              address: "3826 Grand View Blvd",
              city: "Long Beach",
              state: "California",
              lat: 34.004275,
              lng: -118.4303,
              store_type: "losdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 2)
Store.create!(name: "La Isla Bonita",
              email: "info@laisla.com",
              address: "345 Rose Ave",
              city: "Venice",
              state: "California",
              lat: 33.997338,
              lng: -118.475726,
              store_type: "losdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 2)
Store.create!(name: "Free Range LA",
              email: "info@freerangela.com",
              address: "1400 S Sheridan Blvd",
              city: "Los Angeles",
              state: "California",
              lat: 34.083396,
              lng: -118.373652,
              store_type: "losdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 2)
Store.create!(name: "Farmers Belly",
              email: "info@farmersbelly.com",
              address: "5858 Wilshire Blvd",
              city: "Los Angeles",
              state: "California",
              lat: 34.062157,
              lng: -118.356357,
              store_type: "losdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 2)
Store.create!(name: "The Beignet Truck",
              email: "info@thebeignettruck.com",
              address: "3250 Glendale Blvd",
              city: "Los Angeles",
              state: "California",
              lat: 34.118044,
              lng: -118.26014,
              store_type: "losdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 2)

# SAN FRANCISCO STORES

Store.create!(name: "Twirl and Dip",
              email: "twirl@dip.com",
              address: "75 Hagiwara Tea Garden Dr",
              city: "San Francisco",
              state: "California",
              lat: 37.770074,
              lng: -122.470136,
              store_type: "sfcdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 3)
Store.create!(name: "Lets Be Frank",
              email: "info@letsbefrank.com",
              address: "432b Ocatvia St",
              city: "San Francisco",
              state: "California",
              lat: 37.776316,
              lng: -122.424173,
              store_type: "sfcdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 3)
Store.create!(name: "The Chai Cart",
              email: "info@thechaicart.com",
              address: "560 Valencia St",
              city: "San Francisco",
              state: "California",
              lat: 37.763781,
              lng: -122.422221,
              store_type: "sfcdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 3)
Store.create!(name: "Bowld Acai",
              email: "info@bowldacai.com",
              address: "85 5th St",
              city: "San Francisco",
              state: "California",
              lat: 37.782947,
              lng: -122.406664,
              store_type: "sfcdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 3)
Store.create!(name: "Moonraker Mobile",
              email: "info@moonrakermobild.com",
              address: "601 Mission Blvd",
              city: "San Francisco",
              state: "California",
              lat: 37.77077,
              lng: -122.391472,
              store_type: "sfcdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 3)

# SAN JOSE STORES

Store.create!(name: "Treatbot",
              email: "info@treatbot.com",
              address: "70 Descanso Dr",
              city: "San Jose",
              state: "California",
              lat: 37.406049,
              lng: -121.939402,
              store_type: "sjsdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 4)
Store.create!(name: "Dolce Sicilia",
              email: "info@dolcesicilia.com",
              address: "3493 McKee Rd",
              city: "San Jose",
              state: "California",
              lat: 37.38116,
              lng: -121.826985,
              store_type: "sjsdtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 4)

# PORTLAND STORES

Store.create!(name: "The Sugar Shop",
              email: "info@thesugarshop.com",
              address: "SE 52nd St",
              city: "Portland",
              state: "Oregon",
              lat: 45.495642,
              lng: -122.608967,
              store_type: "pordtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 5)
Store.create!(name: "Fernandos Mundo Fiesta",
              email: "info@fernandos.com",
              address: "7238 SE Foster Rd",
              city: "Portland",
              state: "Oregon",
              lat: 45.485951,
              lng: -122.588303,
              store_type: "pordtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 5)
Store.create!(name: "PDX Sliders",
              email: "info@pdxsliders.com",
              address: "8064 SE 17th St",
              city: "Portland",
              state: "Oregon",
              lat: 45.464709,
              lng: -122.646775,
              store_type: "pordtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 5)
Store.create!(name: "Ramys Lamb Shack",
              email: "info@ramys.com",
              address: "6238 SW Capitol Hwy",
              city: "Portland",
              state: "Oregon",
              lat: 45.478433,
              lng: -122.693017,
              store_type: "pordtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 5)
Store.create!(name: "Sip Juice Cart",
              email: "info@sipjuicecart.com",
              address: "3029 SE 21st Ave",
              city: "Portland",
              state: "Oregon",
              lat: 45.500741,
              lng: -122.64493,
              store_type: "pordtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 5)

# CHICAGO TRUCKS

Store.create!(name: "Toasty Cheese",
              email: "info@toastycheese.com",
              address: "450 N Cityfront Plaza",
              city: "Chicago",
              state: "Illinois",
              lat: 41.889487,
              lng: -87.622318,
              store_type: "chidtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 6)
Store.create!(name: "The Fat Shallot",
              email: "info@thefatshallot.com",
              address: "600 W Chicago Ave",
              city: "Chicago",
              state: "Illinois",
              lat: 41.897442,
              lng: -87.643948,
              store_type: "chidtn",
              password: "hamsandwich",
              password_confirmation: "hamsandwich",
              map_id: 6)
