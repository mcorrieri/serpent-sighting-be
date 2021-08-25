# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Snake.destroy_all

puts "creating Users"
Mike = User.create(username: "SerpentBoi68", password_digest: "123", email: "mlc@duey.com", profile_pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.biography.com%2Fus-president%2Fjohn-f-kennedy&psig=AOvVaw0uxBpNaeUZ7zjBWFmSsw4A&ust=1629938959864000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIicrfj5yvICFQAAAAAdAAAAABAD", location: "Baltimore,MD", bio: "30 years old. Single. Love oreos and snakes :)")

puts "creating Snakes"
Copperhead = Snake.create(name: "Eastern Copperhead", sci_name: "Agkistrodon contortrix", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_NC_LinhPhu.jpg", venomous: true, max_length: 53, diet: "mainly mice but also birds, snakes, amphibians and insects" )

puts "Done!!!"