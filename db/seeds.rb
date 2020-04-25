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

meal_a = Meal.create!(date: "2020-04-20", 
                    meal: "Breakfast", 
                    ingredients: "1 tsp butter, 2 large eggs, 1 dash pepper, 1 dash salt, 0.25 tsp garlic powder",
                    nutrition: "197 calories, 1.4g carbs, 14.5g fats, 14.2g proteins", 
                    notes: "", 
                    target: "2000 calories, 50% carbs, 25% fats, 25% proteins",
                    user_id: "2")
meal_b = Meal.create!(date: "2020-04-21", 
                    meal: "Lunch",
                    ingredients: "1 cup 1% cottage cheese, 1 cup strawberries, 2 tbsp maple syrup",
                    nutrition: "313 calories, 44g carbs, 2.8g fats, 29g proteins", 
                    notes: "Love this recipe! Optionally include 1 tsp vanilla extract for more flavor.", 
                    target: "1400 calories, 45% carbs, 25% fats, 30% proteins",
                    user_id: "1")
meal_c = Meal.create!(date: "2020-04-22", 
                    meal: "Dinner", 
                    ingredients: "2 slices whole wheat bread, 2 tbsp hummus, 3 oz red peppers, 0.25 cup onions, 0.5 cup spinach",
                    nutrition: "233 calories, 36.9g carbs, 4.9g fats, 10.1g proteins", 
                    notes: "Red bell peppers can be roasted or raw.", 
                    target: "1400 calories, 45% carbs, 25% fats, 30% proteins",
                    user_id: "1")