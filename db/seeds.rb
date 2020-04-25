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

    t.date :date
      t.string :meal
      t.string :ingredients
      t.string :nutrition
      t.text :notes
      t.string :target

meal_a = Meal.create!(date: "2020-04-20", 
                    meal: "Breakfast", 
                    ingredients: "",
                    nutrition: "", 
                    notes: "", 
                    target: "",
                    user_id: "")
meal_b = Meal.create!(date: "2020-04-21", 
                    meal: "Lunch",
                    ingredients: "",
                    nutrition: "", 
                    notes: "", 
                    target: "",
                    user_id: "")
meal_c = Meal.create!(date: "2020-04-22", 
                    meal: "Dinner", 
                    ingredients: "",
                    nutrition: "", 
                    notes: "", 
                    target: "",
                    user_id: "")