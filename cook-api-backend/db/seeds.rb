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

10.times do
    name = Faker::Food.ingredient
    Ingredient.create(
      name: name
    )
    end

10.times do
    name = Faker::Food.dish
    points = (12..60).to_a.sample
    Recipe.create(
    name: name,
    points: points
    )
end







# Level 1
# Tea: Water, Tea Leaves, Honey
# Sake: Rice, Yeast, Water
# Moon Cake: Flour, Egg, Syrup
# Dumplings: Pork, Veggies, Flour
# Tempura: Shrimp, Flour, Egg
# Rice Cake: Rice, Seaweed, Water
# Mochi: Green Tea, Rice, Beans
# Sushi Tuna Roll: Rice, Seaweed, Tuna
# Sushi Salmon Roll: Rice, Seaweed, Salmon
# Chicken Teriyaki: Soy Sauce, Rice, Chicken
# Fortune Cookie: Flour, Sugar, and Sesame Seed
# Century Egg: Egg, Salt, Water
# Japanese Egg Sandwich: Bread, Egg, Mayo
#
# Level 2
# Pork Fried Rice: Rice, Egg, Pork, Soy Sauce
# Ramen: Noodles, Broth, Veggies, Egg
# Bento Box: Sushi, Brown Rice, Tempura, Veggies
# Pumpkin Croquettes: Flour, Pumpkin, Egg, Bacon

# Level 1
# Tea
# Sake
# Moon Cake
# Dumplings
# Tempura
# Rice Cake
# Mochi
# Sushi Tuna Roll
# Sushi Salmon Roll
# Chicken Teriyaki
# Fortune Cookie: Flour, Sugar, and Sesame Seed
# Century Egg: Egg, Salt, Water
# Japanese Egg Sandwich: Bread, Egg, Mayo
#
# Level 2
# Pork Fried Rice: Rice, Egg, Pork, Soy Sauce
# Ramen: Noodles, Broth, Veggies, Egg
# Bento Box: Sushi, Brown Rice, Tempura, Veggies
# Pumpkin Croquettes: Flour, Pumpkin, Egg, Bacon
#
# kitchen/dishes =
# Level 1
# Tea: Water, Tea Leaves, Honey
# Sake: Rice, Yeast, Water
# Moon Cake: Flour, Egg, Syrup
# Dumplings: Pork, Veggies, Flour
# Tempura: Shrimp, Flour, Egg
# Rice Cake: Rice, Seaweed, Water
# Mochi: Green Tea, Rice, Beans
# Sushi Tuna Roll: Rice, Seaweed, Tuna
# Sushi Salmon Roll: Rice, Seaweed, Salmon
# Chicken Teriyaki: Soy Sauce, Rice, Chicken
# Fortune Cookie: Flour, Sugar, and Sesame Seed
# Century Egg: Egg, Salt, Water
# Japanese Egg Sandwich: Bread, Egg, Mayo
#
# Level 2
# Pork Fried Rice: Rice, Egg, Pork, Soy Sauce
# Ramen: Noodles, Broth, Veggies, Egg
# Bento Box: Sushi, Brown Rice, Tempura, Veggies
# Pumpkin Croquettes: Flour, Pumpkin, Egg, Bacon
