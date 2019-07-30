# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    name = Faker::FunnyName.name
    User.create(
      name: name,
      score: 0
    )
end

ingredients = [
  'Water',
  'Honey',
  'Rice',
  'Yeast',
  'Flour',
  'Egg',
  'Syrup',
  'Pork',
  'Veggies',
  'Shrimp',
  'Seaweed',
  'Green Tea',
  'Beans',
  'Tuna',
  'Salmon',
  'Soy Sauce',
  'Chicken',
  'Sugar',
  'Sesame Seed',
  'Salt',
  'Bread',
  'Mayo',
]

ingredient_collection = []

ingredients.each do |name|
  ingredient_collection << Ingredient.create(name: name)
end


  Recipe.create(name: 'Tea', points: -10)
  Recipe.create(name: 'Sake', points: 1250)
  Recipe.create(name: 'Moon Cake', points: 50)
  Recipe.create(name: 'Dumplings', points: 29)
  Recipe.create(name: 'Tempura', points: 30)
  Recipe.create(name: 'Rice Cake', points: 6)
  Recipe.create(name: 'Mochi', points: 23)
  Recipe.create(name: 'Sushi Tuna Roll', points: 90)
  Recipe.create(name: 'Sushi Salmon Roll', points: 90)
  Recipe.create(name: 'Chicken Teriyaki', points: 53)
  Recipe.create(name: 'Fortune Cookie',points: -3)
  Recipe.create(name: 'Century Egg', points: 0)
  Recipe.create(name: 'Japanese Egg Sandwich', points: 900)
