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
  description: "Nice space in Central London, close to Waterloo Station and King's College. Eight floors in this iconic complex are converted office space, designed to foster connection and enhance productivity. Network over coffee in our light-filled lounges, meet with the team in our airy conference rooms, or head to your sleek private office for some heads-down working time.",
  latitude: 51.504700,
  longitude: -0.114650,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1585520334/qwvl0ae2kut2llb04u7w3uo7qce2.jpg"
)

bedford_st = Space.create(
  address: "1A Bedford St",
  city: "London",
  postcode: "WC2E9HH",
  number_of_people: 4,
  price: 85,
  description: "Extremely bright space in the heart of London, near to Charing Cross Station. Collaborative floor plans inspire casual conversations with your team, while sleek private offices, light-filled lounges, and comfortable conference rooms help drive focus.To break up your workday, explore landmarks like Tower Hill or Old Billingsgate, then enjoy a casual lunch at Tank & Paddle.",
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
  description: "Choosy newly furbished meeting room in Piccadilly Circus. Spanning all six floors of a newly renovated building near Oxford Street, this dog-friendly location has no shortage of amenities, including onsite showers and convenient bike storage. After work, the West End provides a perfect backdrop for celebrating team wins in style.",
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
  description: "Super cool office space open 24/7 in Soho. Perched above an archetypal alleyway in the center of Soho, London, this thoughtfully designed office space caters to businesses of all sizes: Entrepreneurs connect with investors in our light-filled lounges, while growing teams are hard at work in collaborative conference rooms and sleek private offices.",
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
  description: "Large newly open office in Holborn, excellent location with dedicated meeting rooms. With iconic landmarks like the Monument and the Tower of London only steps away, a stroll through the neighbourhood is like traveling through time. Need to step out for a client dinner or team lunch? Nearby spots such as Darwin Brasserie, The Folly, and Leadenhall Market mean you’re never far from a good bite or pint. ",
  latitude: 51.516860,
  longitude: -0.118370,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587751626/oaojujxuucaqe33q48fa.jpg"
)

the_heating_pump = Space.create(
  address: "The Hetling Pump Room, Hot Bath St",
  city: "Bath",
  postcode: "BA11SJ",
  number_of_people: 6,
  price: 93,
  description: "Relaxing office in the heart of Bath. Greet a new client in an art-filled lounge, start your next project in one of the comfortable conference rooms, then touch base with the team in your own private office. ",
  latitude: 51.380500,
  longitude: -2.361370,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587751770/ofeuiynxfistpnqrph2d.jpg"
)

the_podium = Space.create(
  address: "The Podium, Northgate St",
  city: "Bath",
  postcode: "BA15AL",
  number_of_people: 3,
  price: 88,
  description: "Housed within a beautiful, light-filled building that boasts historic arch windows and a modern glass atrium, the podium office space makes an impactful first impression. Entrepreneurs woo investors in modern lounges and well-connected conference rooms, while productivity flows in sleek private offices. ",
  latitude: 51.382730,
  longitude: -2.358960,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587751900/pp88colahzia3ns5hvdu.jpg"
)

stall_st = Space.create(
  address: "16-18 Stall St",
  city: "Bath",
  postcode: "BA11QB",
  number_of_people: 4,
  price: 112,
  description: "Super bright office near the ancient Roman bath. The entire eight-story building is dedicated to WeWork, offering your team uninterrupted access to our beautifully designed, versatile environments: network over coffee in light-filled lounges, brainstorm a new project in a comfortable conference room, then touch base with colleagues in your own private office.",
  latitude: 51.380720,
  longitude: -2.360080,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587751939/xue7j70cmtxlcrowotbp.jpg"
)

west_st = Space.create(
  address: "79-81 West St, Brighton",
  city: "Brighton",
  postcode: "BN12RA",
  number_of_people: 3,
  price: 88,
  description: "Cool office located less than 3 minutes from the beach. Networking comes easy in our expansive, light-filled lounges, while modern conference rooms and sleek private offices help fuel focus.",
  latitude: 50.821290,
  longitude: -0.144510,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587752095/hved7dsaelfqaryvjmp3.jpg"
)

grand_parade = Space.create(
  address: "76 Grand Parade, Brighton",
  city: "Brighton",
  postcode: "BN29JA",
  number_of_people: 4,
  price: 103,
  description: "This location is at the hub of the new Brighton that businesses and entrepreneurs alike are looking for: steps from the city's best restaurants, bars, and galleries, look no further for a thriving coworking and private spaces to suit your business needs.",
  latitude: 50.823180,
  longitude: -0.136210,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587752208/tfwvqlthvfcj2crghk15.jpg"
)

trafalgar_arches = Space.create(
  address: "Trafalgar Arches",
  city: "Brighton",
  postcode: "BN14FQ",
  number_of_people: 3,
  price: 78,
  description: "A tranquil locale in the heart of the city, this coworking space is the ideal home to grow your business. Five floors in this six-story building are dedicated to coworking space, featuring expansive lounges, unique conference rooms, and productivity-fueling private offices.",
  latitude: 50.828290,
  longitude: -0.138600,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587755349/gjftwr9o2r0o9aun3aea.jpg"
)

corn_exchange = Space.create(
  address: "The Corn Exchange, Corn St",
  city: "Bristol",
  postcode: "BS11JQ",
  number_of_people: 4,
  price: 97,
  description: "Intelligently designed collaborative workspace, beautiful private offices, and generous conference rooms span three floors of this 14-story building—not to mention a pet friendly policy that’s perfect for the canine inclined. An ideal location for commuters, enjoy onsite bike storage, convenient parking options, and a Metrolink stop just outside the front door.",
  latitude: 51.454500,
  longitude: -2.594100,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587752157/iqzq77jnb8weozm70hqm.jpg"
)

broadmead = Space.create(
  address: "69 Broadmead",
  city: "Bristol",
  postcode: "BS13DX",
  number_of_people: 3,
  price: 132,
  description: "A state of the art campus colored by the city’s rich history and architectural charm, this office space is truly a vanguard of business development in the region. This location boasts six floors of beautifully designed lounges, private offices, and conference rooms—plus a pet-friendly policy, onsite showers, and an inviting outdoor space that’s sure to elevate your everyday experience.",
  latitude: 51.457500,
  longitude: -2.589760,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587751992/hcaatnz7kspyodcdcxai.jpg"
)

redcliffe = Space.create(
  address: "Redcliffe",
  city: "Bristol",
  postcode: "BS16QF",
  number_of_people: 5,
  price: 147,
  description: "Great space close to the train station. Occupying five floors in a vibrant neighborhood of Bristol, our members here include a diverse mix of growing and established businesses across a variety of sectors.",
  latitude: 51.448320,
  longitude: -2.591510,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587752350/zkt04bej2lsx06dndjws.jpg"
)

bond_street = Space.create(
  address: "25 Bond St S, Penn St, Broadmead",
  city: "Bristol",
  postcode: "BS13BX",
  number_of_people: 6,
  price: 125,
  description: "Spanning all nine floors of this iconic building that has been newly renovated, this dog-friendly location features beautifully designed workspaces, world-class services, and unbeatable access to retail shops, cafés, and restaurants right downstairs.",
  latitude: 51.456770,
  longitude: -2.584170,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587755397/m2fm3y5bjjsjbpga5avp.jpg"
)

sidney_street = Space.create(
  address: "42-45 Sidney St",
  city: "Cambridge",
  postcode: "CB23HX",
  number_of_people: 4,
  price: 162,
  description: "Amazing office space close to Cambridge University. Buzzing with cross-sector innovation, this centrally located coworking environment is ideal for teams of all sizes. Greet a new client in our art-filled lounges, brainstorm your next project in a collaborative conference room, then touch base with colleagues in your own private office. ",
  latitude: 52.206480,
  longitude: 0.120530,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587755461/mja2l0bokljbupbeoi0r.jpg"
)

st_tibb = Space.create(
  address: "St Tibb's Row",
  city: "Cambridge",
  postcode: "CB23ET",
  number_of_people: 4,
  price: 162,
  description: "Surround yourself with boutique shops, thriving businesses, and some of Cambridge’s most historic landmarks at our vibrant New Town workspace. Inspiration comes easily in art-filled lounges and modern conference rooms, while sleek private offices encourage productivity and collaboration.",
  latitude: 52.203510,
  longitude: 0.122240,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587752058/eur5dj0dvwarn10ws1h0.jpg"
)

crafton_centre = Space.create(
  address: "46 Grafton Centre",
  city: "Cambridge",
  postcode: "CB11PS",
  number_of_people: 4,
  price: 159,
  description: "Ideally situated in a new city quarter of historic Cambridge, this vibrant coworking space was built with you in mind: meet with a client in a modern conference room, then touch base with coworkers in our art-filled lounges or your own private office.",
  latitude: 52.207080,
  longitude: 0.133120,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587755429/zjloi3g6kntlxwdwwjc9.jpg"
)

station_rd = Space.create(
  address: "Station Rd",
  city: "Cambridge",
  postcode: "CB1 2JW",
  number_of_people: 6,
  price: 109,
  description: "Bright coworking space near the station. With a definite contemporary vibe, this office space has all the extras that you’d expect (a bike room, lounge areas, and plenty of conference rooms) and lots more that come as a pleasant surprise (a dog-friendly vibe, an on-site cafe, and a terrace where you can enjoy a view of the skyline). ",
  latitude: 52.194870,
  longitude: 0.134220,
  remote_photo_url: "https://res.cloudinary.com/marc7/image/upload/v1587752392/ebzvjhte51hqefnneirb.jpg"
)

puts 'Finished!'
