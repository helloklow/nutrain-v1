# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

scout = User.create!(first_name: "Kelsey", last_name: "Low", email: "scout@email.com", password: "scout")
roamer = User.create!(first_name: "Conrad", last_name: "Porter", email: "roamer@email.com", password: "ranger")

