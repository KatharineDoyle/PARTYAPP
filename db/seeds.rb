# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Space.destroy_all
User.destroy_all

user = User.create!(
        email: 'toni@iloveparties.com',
        password: 'parties4ever'
    )

puts 'Creating spaces...'
space1 = Space.new(
    name:         "Le Wagon Berlin",
    address:      "Rudi-Dutschke-Straße 26, 10969 Berlin",
    description:  "Coding Bootcamp and party space. Big beer fridge and beer pong set!",
    capacity:      300,
    price:         100,
    availability:  true,
    user_id:       1
    )
space1.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542981694/IKEA-Space10-Living-Lab-1.jpg'
space1.user = user
space1.save!
space2 = Space.new(
    name:         "Revamped Couture Van",
    address:      "Möckernstraße 26, 10963 Berlin",
    description:  "Small van we use for AirBnB and techno parties.",
    capacity:      10,
    price:         20,
    availability:  true,
    user_id:       1
  )
  space2.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542984044/whitevan.jpg'
  space2.save!
  space3 = Space.new(
    name:         "Naturkundesmuseum",
    address:      "Invalidenstraße 43, 10115 Berlin",
    description:  "Entire museum. Party with Tristan.",
    capacity:      3000,
    price:         300,
    availability:  true,
    user_id:       1
  )
  space3.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542981957/tristan.jpg'
  space3.save!
  space4 = Space.new(
    name:         "Tent in Tempelhof",
    address:      "Platz der Luftbrücke 5, 12101 Berlin",
    description:  "Five person tent pitched in the middle of Tempelhof. Daytime parties only.",
    capacity:      5,
    price:         5,
    availability:  true,
    user_id:       1
    )
  space4.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542981755/Tent-in-tempelhof.jpg'
  space4.save!
  space5 = Space.new(
    name:         "IKEA",
    address:      "Sachsendamm 47, 10829 Berlin",
    description:  "Huge furniture warehouse. Perfect for raves.",
    capacity:      5000,
    price:         200,
    availability:  true,
    user_id:       1
  )
  space5.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542981694/IKEA-Space10-Living-Lab-1.jpg'
  space5.save!
  space6 = Space.new(
    name:         "My moms basement",
    address:      "Warschauer Str 90, 10245 Berlin",
    description:  "Big space but only available when my mom is out of town.",
    capacity:      5,
    price:         8,
    availability:  true,
    user_id:       1
    )
  space6.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542981755/Tent-in-tempelhof.jpg'
  space6.save!
  space7 = Space.new(

    name:         "IKEA Charlottenberg",
    address:      "Sachsendamm 52, 10829 Berlin",
    description:  "Huge furniture warehouse. Perfect for raves.",
    capacity:      5000,
    price:         400,
    availability:  true,
    user_id:       1
  )
  space7.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1542981694/IKEA-Space10-Living-Lab-1.jpg'
  space7.save!




puts 'Finished!'
