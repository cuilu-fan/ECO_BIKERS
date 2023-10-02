# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Bike.destroy_all
Category.destroy_all
Category.create(name: "City")
Category.create(name: "Mountain")
Category.create(name: "Racing")
Category.create(name: "Trekking")
Category.create(name: "Gravel")

brands = %i[Rose Giant Specialized Tenways Canyon Orbea SantaCruz Trek SCOTT Pinarello BMC Yeti Bianci Cannondale Kona]
colors = %i[red black green blue white]
sizes = %i[XXS XS S M L XL XXL]
refurbed_years = [2020, 2021, 2022, 2023]
conditions = %i[good very-good]
pictures = ["bianchi_gravel.jpg",
  "bike_rare_red.jpg",
  "black_brown_cb_2.jpg",
  "black_brown_cb.jpg",
  "black_mtb.jpg",
  "black_racing_2.jpg",
  "black_racing_3.jpg",
  "black_rare_2.jpg",
  "black_rare.jpg",
  "black_red_specialized.jpg",
  "black_road_2.jpg",
  "black_road.jpg",
  "black_specilaized_gravel.jpg",
  "black_yellow_cb.jpg",
  "blue_cb.jpg",
  "blue_citybike_2.jpg",
  "blue_citybike.jpg",
  "blue_green_rare.jpg",
  "blue_retro_cb.jpg",
  "BMC_racing.jpg",
  "brown_racing.jpg",
  "cool_black_purple_cb.jpg",
  "cool_black_racing.jpg",
  "giant_gravel.jpg",
  "luxury_blue_cb.jpg",
  "purple_orange_citybike.jpg",
  "red_brown_cb.jpg",
  "red_mtb.jpg",
  "red_old_cb.jpg",
  "red_retro_cb.jpg",
  "silver_blue_cb.jpg",
  "silver_cb.jpg",
  "silver_peugeot_cb.jpg",
  "triban_gravel.jpg",
  "white_cb.jpg",
  "yellow_old_cb.jpg",
  "yellow_rare.jpg",
  "yellow_trekking.jpg"]

10.times do
  article = Bike.create!(
    brand: brands.sample,
    age: 3,
    color: colors.sample,
    size: sizes.sample,
    refurbed_year: refurbed_years.sample,
    condition: conditions.sample,
    price: rand(200..500),
    category: Category.all.sample)
    article.photos.attach(io: File.open(File.join(Rails.root,
                          "app/assets/seeds/#{pictures.sample}")),
                          filename: 'bike_picture')
end
