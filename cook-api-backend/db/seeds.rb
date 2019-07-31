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
  { name:'Water', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/droplet_1f4a7.png'},
  { name:'Honey', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/honey-pot_1f36f.png'},
  { name:'Rice', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/cooked-rice_1f35a.png'},
  { name:'Flour', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/ear-of-rice_1f33e.png'},
  { name:'Egg', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/egg_1f95a.png'},
  { name:'Sweet Potato', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/roasted-sweet-potato_1f360.png'},
  { name:'Pork', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/pig-face_1f437.png'},
  { name:'Eggplant', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/aubergine_1f346.png'},
  { name:'Shrimp', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/shrimp_1f990.png'},
  { name:'Seaweed', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/herb_1f33f.png'},
  { name:'Tuna', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fish_1f41f.png'},
  { name:'Salmon', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fish_1f41f.png'},
  { name:'Shoyu', img_url: 'https://cdn.emojidex.com/emoji/seal/soy_sauce.png?1453371398'},
  { name:'Chicken', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/chicken_1f414.png'},
  { name:'Sugar', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/candy_1f36c.png'},
  { name:'Cucumber', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/cucumber_1f952.png'},
  { name:'Salt', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/salt-shaker_1f9c2.png'},
  { name:'Bread', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/baguette-bread_1f956.png'},
  { name:'Mayo', img_url: 'https://cdn.emojidex.com/emoji/seal/mayonnaise.png?1453371312'},
  { name:'Dashi', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/bowl-with-spoon_1f963.png'},
  { name:'Miso', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/bowl-with-spoon_1f963.png'},
  { name:'Soybeans', img_url: 'https://mpng.pngfly.com/20180218/ldw/kisspng-edamame-soy-milk-korean-cuisine-soybean-clip-art-soybean-cliparts-5a897bbb824105.8640147915189595475335.jpg'},
  { name:'Daikon', img_url: 'https://previews.123rf.com/images/primulakat/primulakat1611/primulakat161100040/68354990-parsnip-colored-botanical-illustration-product-to-prepare-delicious-and-healthy-food-isolated-on-whi.jpg'},
  { name:'Onion', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/emojione/211/onion_1f9c5.png'},
  { name:'Garlic', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/emojipedia/181/garlic_1f9c4.png'},
  { name:'Yuzu', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/lemon_1f34b.png'},
  { name:'Peanut', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/peanuts_1f95c.png'},
  { name:'Milk', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/glass-of-milk_1f95b.png'},
  { name:'Grapes', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/grapes_1f347.png'},
  { name:'Coconut', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/coconut_1f965.png'},
  { name:'Komatsuna', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/leafy-green_1f96c.png'},
  { name:'Tomato', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/tomato_1f345.png'},
  { name:'Cheese', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/cheese-wedge_1f9c0.png'},
  { name:'Avocado', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/avocado_1f951.png'},
  { name:'Red pepper', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/hot-pepper_1f336.png'},
  { name:'Red wine', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/wine-glass_1f377.png'},
  { name:'Tako', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/octopus_1f419.png'},
  { name:'Carrot', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/carrot_1f955.png'},
  { name:'Banana', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/banana_1f34c.png'},
  { name:'Broccoli', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/broccoli_1f966.png'},
  { name:'Peach', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/peach_1f351.png'},
  { name:'Kiwi', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/kiwifruit_1f95d.png'},
  { name:'Potato', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/potato_1f954.png'},
  { name:'Orange', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/tangerine_1f34a.png'},
  { name:'Cherry', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/cherries_1f352.png'},
  { name:'Corn', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/ear-of-maize_1f33d.png'},
  { name:'Mushroom', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/mushroom_1f344.png'},
  { name:'Apple', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/red-apple_1f34e.png'},
  { name:'Strawberry', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/strawberry_1f353.png'},
  { name:'Watermelon', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/watermelon_1f349.png'},
  { name:'Mango', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/mango_1f96d.png'}
]
# byebug
ingredients.each{ |ingredient| Ingredient.create(name: ingredient[:name], img_url: ingredient[:img_url])}

 recipes = [
  {name: 'Tea', points: -10, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/teacup-without-handle_1f375.png'},
  {name: 'Sake', points: 1250, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/sake-bottle-and-cup_1f376.png'},
  {name: 'Moon Cake', points: 50, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/moon-cake_1f96e.png'},
  {name: 'Dumplings', points: 29, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/dumpling_1f95f.png'},
  {name: 'Tempura', points: 30, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fried-shrimp_1f364.png'},
  {name: 'Dango', points: 6, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/dango_1f361.png'},
  {name: 'Sushi', points: 90, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/sushi_1f363.png' },
  {name: 'Chicken Teriyaki', points: 53, img_url: 'https://images-na.ssl-images-amazon.com/images/I/41igAlBClxL._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_SCLZZZZZZZ_.jpg'},
  {name: 'Sukiyaki',points: -3, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/pot-of-food_1f372.png'},
  {name: 'Century Egg', points: 0, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/egg_1f95a.png'},
  {name: 'Kare-raisu', points: 900, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/curry-and-rice_1f35b.png'},
  {name: 'Senbei', points: 50, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/rice-cracker_1f358.png'},
  {name: 'Kakigori', points: 60, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/shaved-ice_1f367.png'},
  {name: 'Mochi', points: 70, img_url: 'http://icons.iconarchive.com/icons/sukritact/japanese-food/256/Mochi-icon.png'},
  {name: 'Onigiri', points: 80, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/rice-ball_1f359.png'},
  {name: 'Oden', points: 20, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/oden_1f362.png'},
  {name: 'Miso Soup', points: 40, img_url: 'http://icons.iconarchive.com/icons/sukritact/japanese-food/256/Miso-Soup-icon.png'},
  {name: 'Salmon Teriyaki', points: 80, img_url: 'http://icons.iconarchive.com/icons/sukritact/japanese-food/256/Salmon-Teriyaki-icon.png'},
  {name: 'Sashimi', points: 100, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/sushi_1f363.png'},
  {name: 'Purin', points: 120, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/custard_1f36e.png'},
  {name: 'Takoyaki', points: 200, img_url: 'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-hand-drawn-style-food-octopus-materialfoodfood-materialmenucookingcooking-vegetableschinese-png-image_681426.jpg'},
  {name: 'Ramen', points: 110, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/steaming-bowl_1f35c.png'},
  {name: 'Kobe Beef', points: 1510, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/cut-of-meat_1f969.png'},
  {name: 'Supearibu', points: 80, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/meat-on-bone_1f356.png'},
  {name: 'Supagetti', points: 110, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/spaghetti_1f35d.png'},
  {name: 'Edamame', points: 10, img_url: 'https://banner2.kisspng.com/20180306/goq/kisspng-soybean-royalty-free-clip-art-stripped-peas-5a9ea2ab0e57b1.2623638315203457710588.jpg'},
  {name: 'Fortune Cookie', points: 110, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fortune-cookie_1f960.png'},
  {name: 'Sunomono', points: 310, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/green-salad_1f957.png'},
  {name: 'Tandori', points: 1180, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/emojidex/112/stuffed-flatbread_1f959.png'},
  {name: 'Fried Chicken', points: 11, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/poultry-leg_1f357.png'},
  {name: 'Cake', points: 10, img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/birthday-cake_1f382.png'}
]

  recipes.each{|recipe| Recipe.create(name: recipe[:name], img_url: recipe[:img_url], points: recipe[:points])}
