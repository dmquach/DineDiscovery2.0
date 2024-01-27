# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# ApplicationRecord.transaction do
puts "Destroying tables..."
# Unnecessary if using `rails db:seed:replant`
# Review.destroy_all
Business.destroy_all
User.destroy_all

puts "Resetting primary keys..."
# For easy testing, so that after seeding, the first `User` has `id` of 1
ApplicationRecord.connection.reset_pk_sequence!("users")
ApplicationRecord.connection.reset_pk_sequence!("businesses")
ApplicationRecord.connection.reset_pk_sequence!("reviews")

puts "Creating users..."
# Create one user with an easy to remember username, email, and password:
demo = User.create!(
  email: "demo@demo.com",
  password: "123456",
  first_name: "Demo",
  last_name: "User",
  zip_code: "12345",
  birthday: "1995-05-15",
)
demo.avatar.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/avatar.png"), filename: "avatar.png")

mike = User.create!(
    email: 'mike123@gmail.com',
    first_name: 'Mike',
    last_name: 'Man',
    zip_code: '95121',
    password: 'password',
)
mike.avatar.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/man.png"), filename: "man.png")

paulo = User.create!(
  email: 'paulo123@example.com',
  first_name: 'Paulo',
  last_name: 'LastName',
  zip_code: '12345',
  password: 'password'
)
paulo.avatar.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/man2.png"), filename: "man2.png")

chris = User.create!(
  email: 'chris123@example.com',
  first_name: 'Chris',
  last_name: 'Lastname',
  zip_code: '54321',
  password: 'password'
)

abbey = User.create!(
  email: 'abbey123@example.com',
  first_name: 'Abbey',
  last_name: 'Lastname',
  zip_code: '67890',
  password: 'password'
)
abbey.avatar.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/images-1.png"), filename: "images-1.png")

darren = User.create!(
  email: 'darren123@example.com',
  first_name: 'Darren',
  last_name: 'Lastname',
  zip_code: '13579',
  password: 'password'
)
diego = User.create!(
  email: 'diego123@example.com',
  first_name: 'Diego',
  last_name: 'Lastname',
  zip_code: '24680',
  password: 'password'
)

taylor = User.create!(
  email: 'taylor123@example.com',
  first_name: 'Taylor',
  last_name: 'Lastname',
  zip_code: '13579',
  password: 'password'
)
taylor.avatar.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/woman.jpg"), filename: "woman.jpg")

disnee = User.create!(
  email: 'disnee123@example.com',
  first_name: 'Disnee',
  last_name: 'Lastname',
  zip_code: '98765',
  password: 'password'
)
disnee.avatar.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/woman2.png"), filename: "woman2.png")

puts "Creating businesses..."

pizzaPizza = Business.create!(
  user_id: 1,
  name: "Pizza Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
pizzaPizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/p1.jpg"), filename: "p1.jpg")


pizzaHut = Business.create!(
  user_id: 2,
  name: "Pizza Hut",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
pizzaHut.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/Pizza-Hut.webp"), filename: "pizzahut.jpg")

unionSquarePizza = Business.create!(
  user_id: 3,
  name: "Tres Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
unionSquarePizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/download.jpg"), filename: "pizzau.jpg")

helloP = Business.create!(
  user_id: 4,
  name: "Hello Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
helloP.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/p2.jpg"), filename: "p2.jpg")

freshPizza = Business.create!(
  user_id: 5,
  name: "Fresh Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
freshPizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/pizza.jpg"), filename: "p4.jpg")

modPizza = Business.create!(
  user_id: 6,
  name: "Mod pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
modPizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/MOD_Pizza_logo.svg.png"), filename: "p5.jpg")

italianPizza = Business.create!(
  user_id: 2,
  name: "Italian Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 10,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
italianPizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/p2.jpg"), filename: "p2.jpg")

dylanPizza = Business.create!(
  user_id: 3,
  name: "Dylan's Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 25,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
dylanPizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/download-1.jpg"), filename: "p6.jpg")

myPizza = Business.create!(
  user_id: 4,
  name: "My Pizza",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Pizza",
  lat: 0,
  lng: 0,
)
myPizza.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/Filaga-Gallery-2500px-1.jpg"), filename: "p8.jpg")

thinkCoffee = Business.create!(
  user_id: 6,
  name: "Thinking about Coffee",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Drinks",
  lat: 0,
  lng: 0,
)
thinkCoffee.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink4.jpg"), filename: "drink4.jpg")

starbucks = Business.create!(
  user_id: 7,
  name: "Star Buck Me",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Drink",
  lat: 0,
  lng: 0,
)
starbucks.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink6.jpg"), filename: "drink6.jpg")

blankStreetCoffee = Business.create!(
  user_id: 8,
  name: "Street Coffee",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Coffee",
  lat: 0,
  lng: 0,
)
blankStreetCoffee.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink5.jpg"), filename: "drink5.jpg")

boba = Business.create!(
  user_id: 1,
  name: "Boba Lovers",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Drinks",
  lat: 0,
  lng: 0,
)
boba.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink1.jpg"), filename: "drink1.jpeg")

coffeeee = Business.create!(
  user_id: 4,
  name: "Coffeeee",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Drinks",
  lat: 0,
  lng: 0,
)
coffeeee.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink7.webp"), filename: "drink7.webp")

bobaHouse = Business.create!(
  user_id: 4,
  name: "Boba House",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Drinks",
  lat: 0,
  lng: 0,
)
bobaHouse.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink2.webp"), filename: "drink2.jpeg")

yumCoffee = Business.create!(
  user_id: 5,
  name: "Yum Latte",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 100,
  category: "Drinks",
  lat: 0,
  lng: 0,
)
yumCoffee.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/drink3.jpg"), filename: "drink3.jpeg")

yummyburger = Business.create!(
  user_id: 8,
  name: "Yum Burgs",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Burger",
  lat: 0,
  lng: 0,
)
yummyburger.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/burger5.jpg"), filename: "burger5.jpg")

burgerBurger = Business.create!(
  user_id: 5,
  name: "Burger Burger",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Burger",
  lat: 0,
  lng: 0,
)
burgerBurger.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/burger1.jpg"), filename: "burger1.jpg")

bunsHouse = Business.create!(
  user_id: 7,
  name: "BunsHouse",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Burger",
  lat: 0,
  lng: 0,
)
bunsHouse.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/burger2.jpg"), filename: "burger2.jpg")

burgerKing = Business.create!(
  user_id: 8,
  name: "BurgerKings",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Burger",
  lat: 0,
  lng: 0,
)
burgerKing.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/burger3.jpg"), filename: "burger3.jpg")

mcdonalds = Business.create!(
  user_id: 8,
  name: "McBurger",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 5,
  category: "Burger",
  lat: 0,
  lng: 0,
)
mcdonalds.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/mcdonalds.png"), filename: "mcdonalds.png")

wendys = Business.create!(
  user_id: 8,
  name: "Wendy's",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Burger",
  lat: 0,
  lng: 0,
)
wendys.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/wendys.webp"), filename: "wendys.webp")

burgerplace = Business.create!(
  user_id: 8,
  name: "Burger Palace",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Burger",
  lat: 0,
  lng: 0,
)
burgerplace.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/burger4.webp"), filename: "burger4.webp")

iceCold = Business.create!(
  user_id: 6,
  name: "Ice Cream",
  city: "SF",
  state: "CA",
  zip_code: "95121",
  phone_number: "1234567890",
  price_range: 20,
  category: "Dessert",
  lat: 0,
  lng: 0,
)
iceCold.photo.attach(io: URI.open("https://dine-discovery-seeds.s3.us-west-1.amazonaws.com/icecream.jpg"), filename: "icecream.jpg")

puts "reviews"

wills_1 = Review.create!(
  rating: 5,
  business_id: 11,
  user_id: 1,
  body: "Pretty good.",
  images: [
    # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee9.jpg"), filename: "image1.jpg" },
    # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee2.jpg"), filename: "image2.jpg" },
    # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee3.jpg"), filename: "image3.jpg" },
  ],
)
# puts "here"

# Business.find(wlls_1.business_id).update_average_rating

# puts "here"

# wills_2 = Review.create!(
#   rating: 5,
#   business_id: 10,
#   user_id: 2,
#   body: "Bro what is this trash.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee3.jpg"), filename: "image4.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee4.jpg"), filename: "image5.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee5.jpg"), filename: "image6.jpg" },
#   ],
# )
# Business.find(wills_2.business_id).update_average_rating

# wills_3 = Review.create!(
#   rating: 5,
#   business_id: 11,
#   user_id: 3,
#   body: "I love it!.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee1.jpg"), filename: "image4.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee11.jpg"), filename: "image5.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee10.jpg"), filename: "image6.jpg" },
#   ],
# )
# Business.find(wills_3.business_id).update_average_rating

# wills_4 = Review.create!(
#   rating: 5,
#   business_id: 11,
#   user_id: 6,
#   body: "Meh...",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee7.jpg"), filename: "image4.jpg" },

#   ],
# )
# Business.find(wills_4.business_id).update_average_rating

# wills_5 = Review.create!(
#   rating: 1,
#   business_id: 11,
#   user_id: 7,
#   body: "So good!",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee5.jpg"), filename: "image6.jpg" },
#   ],
# )
# Business.find(wills_5.business_id).update_average_rating

# wills_6 = Review.create!(
#   rating: 5,
#   business_id: 1,
#   user_id: 1,
#   body: "Mhhh.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee8.jpg"), filename: "image6.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee11.jpg"), filename: "image5.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/coffee10.jpg"), filename: "image9.jpg" },
#   ],
# )
# Business.find(wills_6.business_id).update_average_rating

# # # end

# p_1 = Review.create!(
#   rating: 5,
#   business_id: 1,
#   user_id: 1,
#   body: "Kirito, the protagonist of Sword Art Online, is a character who understands the power of prayer. Through his trials and tribulations, he has learned that sometimes the only thing that can sustain us is the strength we draw from a higher power. He has learned to trust in the universe, in God, and in the power of his own faith. And so he prays, not just for himself, but for those he loves and for the world he hopes to save. Kirito knows that prayer is not a magic solution to his problems, but rather a means of finding peace, of centering himself, and of tapping into a greater source of strength. For Kirito, prayer is a reminder that he is never truly alone, and that there is always hope in the darkest of moments.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza9.jpg"), filename: "image1.jpg" },

#   ],
# )
# Business.find(p_1.business_id).update_average_rating
# p_2 = Review.create!(
#   rating: 5,
#   business_id: 1,
#   user_id: 1,
#   body: "Dear God, I come to you today to offer up a prayer for Asuna, a brave and kindhearted warrior from the world of Sword Art Online. Please watch over her and keep her safe as she faces the challenges and dangers of this virtual world. Grant her strength and courage as she fights to protect herself and those she loves. Help her to find peace in the midst of chaos and to hold onto hope even in the darkest of moments. May she know that she is never alone, and that you are always with her, guiding and supporting her along the way. Thank you for blessing us with such a wonderful character, and for reminding us of the power of faith and determination. Amen.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizz3.jpg"), filename: "image4.jpg" },

#   ],
# )
# Business.find(p_2.business_id).update_average_rating

# p_3 = Review.create!(
#   rating: 5,
#   business_id: 1,
#   user_id: 1,
#   body: "Saber from Fate/Stay is a truly amazing character. From her striking appearance and regal demeanor to her unwavering sense of justice and selflessness, she embodies all of the qualities that make a hero truly great. She is a skilled warrior and leader, always putting the needs of others before her own, and willing to make the ultimate sacrifice for the greater good. Her unwavering dedication to her ideals, her loyalty to those she cares about, and her willingness to face aCA challenge with courage and determination make her a true inspiration to all who encounter her. Saber is a shining example of what it means to be a true hero, and her legacy will continue to inspire and empower us for generations to come.",

# )
# Business.find(p_3.business_id).update_average_rating

# p_4 = Review.create!(
#   rating: 4,
#   business_id: 1,
#   user_id: 1,
#   body: "Naruto Uzumaki, the main character of the epoCAmous manga and anime series, is an iconic figure in modern shonen storytelling. He starts out as an underdog, an outcast in his village due to his status as a host for the Nine-Tailed Fox demon. But through his indomitable spirit, hard work, and perseverance, he rises to become one of the most powerful ninja in the world. Naruto's greatest strength lies in his unwavering determination, his ability to never give up even in the face of seemingly insurmountable obstacles. He possesses a heart of gold and a selfless desire to protect and help others, no matter the cost to himself. Naruto's journey is one of growth, both as a ninja and as a person, as he learns to navigate the complexities of the world and the people around him. He is a truly remarkable character, one whose impact on the world of anime and manga is undeniable..",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza11.jpg"), filename: "image9.jpg" },

#   ],
# )
# Business.find(p_4.business_id).update_average_rating

# p_5 = Review.create!(
#   rating: 2,
#   business_id: 1,
#   user_id: 1,
#   body: "Sasuke Uchiha, one of the most complex and fascinating characters in the Naruto universe, is a skilled and powerful shinobi with a tragic past. Haunted by the murder of his clan, Sasuke has become consumed by a desire for revenge against his older brother, Itachi. He is often cold and aloof, preferring to keep his emotions hidden beneath a façade of indifference. Despite this, Sasuke is fiercely loyal to those he cares about, especially his former teammate and friend, Naruto Uzumaki. Throughout his journey, Sasuke struggles with his own identity and sense of purpose, constantly questioning his decisions and motivations. But despite his flaws and mistakes, Sasuke remains a compelling and compellingly human character, a testament to the power of storytelling in the Naruto universe.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza7.jpg"), filename: "image5.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza6.jpg"), filename: "image9.jpg" },
#   ],
# )

# Business.find(p_5.business_id).update_average_rating

# p_6 = Review.create!(
#   rating: 3,
#   business_id: 1,
#   user_id: 1,
#   body: "Archer from Fate/stay is a complex and intriguing character. He is a skilled warrior with powerful abilities, but also a tortured soul with a troubled past. Despite his gruff exterior, Archer is deeply introspective and philosophical, often questioning the nature of heroism and the meaning of his own existence. His struggles with his own identity and purpose make him a compelling character to watch, and his conflicts with other characters in the Fate/stay series are always intense and emotional. Archer's abilities as a hero and a warrior are matched only by his depth as a character, making him an unforgettable figure in the world of anime and manga.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza11.jpg"), filename: "image6.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza9.jpg"), filename: "image5.jpg" },
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza10.jpg"), filename: "image9.jpg" },
#   ],
# )
# Business.find(p_6.business_id).update_average_rating

# p_11 = Review.create!(
#   rating: 2,
#   business_id: 2,
#   user_id: 1,
#   body: "Kirito, the protagonist of Sword Art Online, is a character who understands the power of prayer. Through his trials and tribulations, he has learned that sometimes the only thing that can sustain us is the strength we draw from a higher power. He has learned to trust in the universe, in God, and in the power of his own faith. And so he prays, not just for himself, but for those he loves and for the world he hopes to save. Kirito knows that prayer is not a magic solution to his problems, but rather a means of finding peace, of centering himself, and of tapping into a greater source of strength. For Kirito, prayer is a reminder that he is never truly alone, and that there is always hope in the darkest of moments.",
#   images: [
#     # { io: URI.open("https://zelp-seeds.s3.amazonaws.com/pizza9.jpg"), filename: "image1.jpg" },

#   ],
# )
# Business.find(p_11.business_id).update_average_rating
