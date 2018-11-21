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
    address:      "Rudi-Dutschke-Straße 26, 10969 Berlin",
    description:  "Coding Bootcamp and party space. Big beer fridge and beer pong set!",
    capacity:      300,
    availability:  true,
    user_id:       1
  },
  {
    name:         "Techno Van",
    address:      "Möckernstraße 26, 10963 Berlin",
    description:  "Small van we use for AirBnB and techno parties.",
    capacity:      10,
    availability:  true,
    user_id:       2
  },
  {
    name:         "Naturkundesmuseum",
    address:      "Invalidenstraße 43, 10115 Berlin",
    description:  "Entire museum. Party with Tristan.",
    capacity:      3000,
    availability:  true,
    user_id:       1
  },
  {
    name:         "Tent in Tempelhof",
    address:      "Platz der Luftbrücke 5, 12101 Berlin",
    description:  "Five person tent pitched in the middle of Tempelhof. Daytime parties only.",
    capacity:      5,
    availability:  true,
    user_id:       2
  },
    {
    name:         "IKEA",
    address:      "Sachsendamm 47, 10829 Berlin",
    description:  "Huge furniture warehouse. Perfect for raves.",
    capacity:      5000,
    availability:  true,
    user_id:       2
  }
]

Space.create!(spaces_attributes)
puts 'Finished!'
