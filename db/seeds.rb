# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cinema.destroy_all

Cinema.create(name: "Stark Theatre", address: "7 Winterfell Rd.", phone_number: "1-234-567-8910")
Cinema.create(name: "Friends Theatre", address: "236 Central Perk Plaza", phone_number: "1-098-765-4321")