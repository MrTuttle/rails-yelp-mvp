# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database if Rails.env.development? ..."
Restaurant.destroy_all if Rails.env.development?

puts "Creating 5 restaurants..."

 Restaurant.create!(
   name: "C'est Bon C'est Belge",
   address: "Rue du Bon-Secours, Brussel",
   phone_number: "+321 23 45 67 89",
   category: "belgian"
 )

 Restaurant.create!(
   name: "Epicure",
   address: "Faubourg Saint Honoré, Paris",
   phone_number: "+331 23 45 67 89",
   category: "french"
 )

 Restaurant.create!(
   name: "Ristorante A Mano",
   address: "Strausberger Platz, Berlin",
   phone_number: "+491 23 45 67 89",
   category: "italian"
 )

 Restaurant.create!(
   name: "Teppanyaki Restaurant Sazanka",
   address: "Ferdinand Bolstraat, Amsterdam",
   phone_number: "+311 23 45 67 89",
   category: "japanese"
 )

 Restaurant.create!(
   name: "Sichuan Folk",
   address: "Shoreditch, London",
   phone_number: "+441 23 45 67 89",
   category: "chinese"
 )

 puts "creating reviews..."

 Review.create!(
    content: "This is a poor restaurant!",
    rating: 2,
    restaurant_id: Restaurant.where(name: "Sichuan Folk").first.id
 )

  Review.create!(
    content: "This is a great restaurant!",
    rating: 5,
    restaurant_id: Restaurant.where(name: "Epicure").first.id
  )
  Review.create!(
    content: "Awesome food!",
    rating: 5,
    restaurant_id: Restaurant.where(name: "Epicure").first.id
  )
  puts "finished!"
