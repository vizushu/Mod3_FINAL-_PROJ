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
  name: 'Water',
  name: 'Honey',
  name: 'Rice',
  name: 'Yeast',
  name: 'Flour',
  name: 'Egg',
  name: 'Syrup',
  name: 'Pork',
  name: 'Veggies',
  name: 'Shrimp',
  name: 'Seaweed',
  name: 'Green Tea',
  name: 'Beans',
  name: 'Tuna',
  name: 'Salmon',
  name: 'Shoyu',
  name: 'Chicken',
  name: 'Sugar',
  name: 'Sesame Seed',
  name: 'Salt',
  name: 'Bread',
  name: 'Mayo',
  name: 'Dashi',
  name: 'Miso',
  name: 'Mirin',
  name: 'Soybeans',
  name: 'Daikon',
  name: 'Katsuobushi',
  name: 'Kombu',
  name: 'Negi',
  name: 'Aburaage',
  name: 'Yuzu',
  name: 'Wasabi',
  name: 'Panko',
  name: 'Karashi',
  name: 'Mochigome',
  name: 'Maitake',
  name: 'Shiso leaves',
  name: 'Kinako',
  name: 'Goya',
  name: 'Umeboshi',
  name: 'Nori',
  name: 'Tako', img_url: ('https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/octopus_1f419.png')
]

ingredient_collection = []

ingredients.each do |name|
  ingredient_collection << Ingredient.create(name: name)
end

  Recipe.create(name: 'Tea', points: -10, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/teacup-without-handle_1f375.png')
  Recipe.create(name: 'Sake', points: 1250, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/sake-bottle-and-cup_1f376.png')
  Recipe.create(name: 'Moon Cake', points: 50, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/moon-cake_1f96e.png')
  Recipe.create(name: 'Dumplings', points: 29), img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/dumpling_1f95f.png')
  Recipe.create(name: 'Tempura', points: 30, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fried-shrimp_1f364.png')
  Recipe.create(name: 'Dango', points: 6, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/dango_1f361.png')
  Recipe.create(name: 'Sushi', points: 90, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/sushi_1f363.png' )
  Recipe.create(name: 'Chicken Teriyaki', points: 53, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41igAlBClxL._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_SCLZZZZZZZ_.jpg')
  Recipe.create(name: 'Sukiyaki',points: -3, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/pot-of-food_1f372.png')
  Recipe.create(name: 'Century Egg', points: 0, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/egg_1f95a.png')
  Recipe.create(name: 'Kare-raisu', points: 900, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/curry-and-rice_1f35b.png')
  Recipe.create(name: 'Senbei', points: 50, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/rice-cracker_1f358.png')
  Recipe.create(name: 'Kakigori', points: 60, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/shaved-ice_1f367.png')
  Recipe.create(name: 'Mochi', points: 70, img_url: 'http://icons.iconarchive.com/icons/sukritact/japanese-food/256/Mochi-icon.png')
  Recipe.create(name: 'Onigiri', points: 80, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/rice-ball_1f359.png')
  Recipe.create(name: 'Oden', points: 20, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/oden_1f362.png')
  Recipe.create(name: 'Miso Soup', points: 40, img_url: 'http://icons.iconarchive.com/icons/sukritact/japanese-food/256/Miso-Soup-icon.png')
  Recipe.create(name: 'Salmon Teriyaki', points: 80, img_url: 'http://icons.iconarchive.com/icons/sukritact/japanese-food/256/Salmon-Teriyaki-icon.png')
  Recipe.create(name: 'Sashimi', points: 100, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/sushi_1f363.png')
  Recipe.create(name: 'Purin', points: 120, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/custard_1f36e.png')
  Recipe.create(name: 'Takoyaki', points: 200, img_url: 'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-hand-drawn-style-food-octopus-materialfoodfood-materialmenucookingcooking-vegetableschinese-png-image_681426.jpg')
  Recipe.create(name: 'Ramen', points: 110, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/steaming-bowl_1f35c.png')




