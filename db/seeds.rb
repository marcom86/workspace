# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
puts 'Destroying all Bookings'

Space.destroy_all
puts 'Destroying all Spaces'


puts 'Creating spaces...'
concert_hall_approach = Space.create(
  address: "153 Concert Hall Approach, Bishop's",
  city: "London",
  postcode: "SE18XU",
  number_of_people: 3,
  price: 128,
  description: "Nice space in Central London, close to Waterloo Station and King's College.",
  latitude: 51.504700,
  longitude: -0.114650,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585520334/qwvl0ae2kut2llb04u7w3uo7qce2.jpg"
)

lincoln_inn_fields = Space.create(
  address: "The Hetling Pump Room, Hot Bath St",
  city: "Bath",
  postcode: "BA11SJ",
  number_of_people: 6,
  price: 159,
  description: "Lorem Ipsum dolore sic amet, beautiful space, bla bla bla",
  latitude: 51.380500,
  longitude: -2.361370,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585586583/transferwise-office-m-2_igh2wg.jpg"
)

bedford_st = Space.create(
  address: "1A Bedford St",
  city: "London",
  postcode: "WC2E9HH",
  number_of_people: 4,
  price: 85,
  description: "Extremely bright space in the heart of London, near to Charing Cross Station.",
  latitude: 51.509880,
  longitude: -0.123750,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585587696/imofgtk9nv6zjh2tej8jfhe9c9vy.jpg"
)

rupert_st = Space.create(
  address: "14-16 Rupert St",
  city: "London",
  postcode: "W1D6DD",
  number_of_people: 3,
  price: 76,
  description: "Choosy newly furbished meeting room in Piccadilly Circus.",
  latitude: 51.510710,
  longitude: -0.132380,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585534197/9unm0nv5ixdvtprn6wyby4rc7gk3.jpg"
)

romilly_st = Space.create(
  address: "23 Romilly St",
  city: "London",
  postcode: "W1D5AQ",
  number_of_people: 5,
  price: 67,
  description: "Super cool office space open 24/7 in Soho.",
  latitude: 51.513180,
  longitude: -0.130940,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585534713/q5w9tpg1495810fuuekfkgqhjkje.jpg"
)

lincoln_inn_fields = Space.create(
  address: "13 Lincoln's Inn Fields",
  city: "London",
  postcode: "WC2A3BP",
  number_of_people: 6,
  price: 159,
  description: "Large newly open office in Holborn, excellent location with dedicated meeting rooms.",
  latitude: 51.516860,
  longitude: -0.118370,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585586583/transferwise-office-m-2_igh2wg.jpg"
)
puts 'Finished!'
