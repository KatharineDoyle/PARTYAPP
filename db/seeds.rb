# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Space.destroy_all

puts 'Creating spaces...'
spaces_attributes = [
  {
    name:         "Le Wagon Berlin",
    address:      "10969 Berlin, Germany",
    description:  "Coding Bootcamp and party space. Great for Beer Pong!",
    capacity:      300,
    availability:   true,
    user_id:       1
  },
  {
    name:         "Techno Keller",
    address:      "12043 Berlin, Germany",
    description:  "Small Keller we use for AirBnB and small techno parties.",
    capacity:      10,
    availability:   true,
    user_id:       2
  },
  {
    name:         "Naturkundesmuseum",
    address:      "10115 Berlin, Germany",
    description:  "Entire museum. Party with Tristan.",
    capacity:      5000,
    availability:   true,
    user_id:       1
  },
  {
    name:         "Tent in Tempelhof",
    address:      "10115 Berlin, Germany",
    description:  "Five person tent pitched in the middle of Tempelhof.",
    capacity:      5,
    availability:   true,
    user_id:       2
  },
    {
    name:         "My friend's apartment",
    address:      "12044 Berlin, Germany",
    description:  "Small apartment Neukölln. Daytime parties only.",
    capacity:      100,
    availability:   true,
    user_id:       2
  }
]

Space.create!(spaces_attributes)
puts 'Finished!'
