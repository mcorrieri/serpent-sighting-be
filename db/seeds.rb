# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Snake.destroy_all
Sighting.destroy_all

puts "creating Users"
Mike = User.create(username: "SerpentBoi68", password_digest: "123", email: "mlc@duey.com", profile_pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.biography.com%2Fus-president%2Fjohn-f-kennedy&psig=AOvVaw0uxBpNaeUZ7zjBWFmSsw4A&ust=1629938959864000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIicrfj5yvICFQAAAAAdAAAAABAD", location: "Baltimore,MD", bio: "30 years old. Single. Love oreos and snakes :)")
Duey = User.create(username: "Dueywfangs", password_digest: "123", email: "duey@duey.com", profile_pic: "https://pbs.twimg.com/profile_images/1090376349993324545/nzvJHR_X.jpg", location: "Mineral Hill,MD", bio: "I have seen all the snakes in this vast existence, througout all time, past and present.")

puts "creating Snakes"
Copperhead = Snake.create(name: "Eastern Copperhead", sci_name: "Agkistrodon contortrix", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_NC_LinhPhu.jpg", venomous: true, max_length: 53, diet: "mainly mice but also birds, snakes, amphibians and insects" )
Timber = Snake.create(name: "Timber Rattlesnake", sci_name: "Crotalus horridus", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_TR_ScottSmith.jpg", venomous: true, max_length: 74, diet: "small to medium sized rodents" )
Watersnake = Snake.create(name: "Common Watersnake", sci_name: "Nerodia sipedon", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_NW_Adult_SSmith.jpg", venomous: false, max_length: 55, diet: "fish and amphibians" )
Plain_Watersnake = Snake.create(name: "Plain-bellied Watersnake", sci_name: "Nerodia erythrogaster", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_RBWAdult_DaveWilson.jpg", venomous: false, max_length: 62, diet: "fish, amphibians, crayfish, frogs" )
Queensnake = Snake.create(name: "Queensnake", sci_name: "Regina septemvittata", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_QS_JohnWhite2.jpg", venomous: false, max_length: 36, diet: "mainly crayfish" )
Earthsnake = Snake.create(name: "Smooth Earthsnake", sci_name: "Virginia valeriae", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_ESE_Adult_ScottSmith.jpg", venomous: false, max_length: 15, diet: "earthworms and soft-bodied insects")
Mtn_Earthsnake = Snake.create(name: "Mountain Earthsnake", sci_name:"Virginia valeriae pulchra", picture: "https://dnr.maryland.gov/wildlife/PublishingImages/snake_ME_DonForester.jpg", venomous: false, max_length: 13, diet: "earthworms and soft-bodied insects")

puts "creating Sighting"
s1 = Sighting.create(comment: "Holy mackeral moses! This black snake was huge.", location: "Sykesville", date: "August 24, 2021", size: "4 foot", user_id: Mike.id )
s2 = Sighting.create(comment: "Almost got bit by that dang ole timber rattler!", location: "Frederick", date: "August 1, 2021", size: "Probably about 23 inches", user_id: Duey.id )


puts "Done!!!"