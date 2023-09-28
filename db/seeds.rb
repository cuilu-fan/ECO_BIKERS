# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.destroy_all
Category.create(name: "City")
Category.create(name: "Mountain")
Category.create(name: "Racing")
Category.create(name: "Trekking")
Category.create(name: "Gravel")

Bike.destroy_all

brands = %i[Rose Giant Specialized Tenways Canyon Orbea SantaCruz Trek SCOTT Pinarello BMC Yeti Bianci Cannondale Kona]
colors = %i[red black green blue white]
sizes = %i[XXS XS S M L XL XXL]
refurbed_years = [2020, 2021, 2022, 2023]
conditions = %i[good very-good]

10.times do
  Bike.create!(
    brand: brands.sample,
    age: 3,
    color: colors.sample,
    size: sizes.sample,
    refurbed_year: refurbed_years.sample,
    condition: conditions.sample,
    price: rand(200..500),
    category: Category.all.sample
  )
end
