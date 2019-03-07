# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cuisine1 = Cuisine.create(name: "italian")
Restaurant.create(name: "Blabla", address: "Ilsenburger Straße 40, 10589 Berlin", cuisine_id: cuisine1.id)
MAPBOX_API_KEY=pk.eyJ1IjoicGFzdGlsIiwiYSI6ImNqczRnOHA3dTAxd2M0M3Bjb3cxbmswYmwifQ.DRBz-kICv4zTajTXX8jkhQ

