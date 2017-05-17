# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do 
  Setlist.destroy_all

  # setlists = {
  #   "1" => {
  #     date: 12/29/2012,
  #     venue: 'Capitol Theater'
  #     city: "Port Chester",
  #     state: "New York",
  #     country: "USA",
  #     poster_image_url: asset_path(poster-12292012.jpg)
  #   }
  # }

  Setlist.create!(
    date: Date.new(2012, 12, 27),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'assets/posters/2012_12_27.jpg'
  )

  Setlist.create!(
    date: Date.new(2012, 12, 28),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'assets/posters/2012_12_28.jpg'
  )

    Setlist.create!(
    date: Date.new(2012, 12, 29),
    venue: 'Capitol Theater',
    city: "Port Chester",
    state: "New York",
    country: "USA",
    poster_img_url:'assets/posters/2012_12_29.jpg'
  )


end
