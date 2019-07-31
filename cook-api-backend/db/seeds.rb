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
ingredient = [
  { name: 'water', imgUrl: "blah"}, {name:Honey, imgUrl: "HoneyImg"}
]
ingredients = [
  { name:'Water', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/droplet_1f4a7.png'}
  { name:'Honey', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/honey-pot_1f36f.png'}
  { name:'Rice', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/cooked-rice_1f35a.png'}
  { name:'Flour', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/ear-of-rice_1f33e.png'}
  { name:'Egg', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/egg_1f95a.png'}
  { name:'Sweet Potato', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/roasted-sweet-potato_1f360.png'}
  { name:'Pork', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/pig-face_1f437.png'}
  { name:'Eggplant', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/aubergine_1f346.png'}
  { name:'Shrimp', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/shrimp_1f990.png'}
  { name:'Seaweed', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/herb_1f33f.png'}
  { name:'Tuna', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fish_1f41f.png'}
  { name:'Salmon', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/fish_1f41f.png'}
  { name:'Shoyu', img_url: 'https://cdn.emojidex.com/emoji/seal/soy_sauce.png?1453371398'}
  { name:'Chicken', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/chicken_1f414.png'}
  { name:'Sugar', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/candy_1f36c.png'}
  { name:'Cucumber', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/198/cucumber_1f952.png'}
  { name:'Salt', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/salt-shaker_1f9c2.png'}
  { name:'Bread', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/baguette-bread_1f956.png'}
  { name:'Mayo', img_url: 'https://cdn.emojidex.com/emoji/seal/mayonnaise.png?1453371312'}
  { name:'Dashi', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/bowl-with-spoon_1f963.png'}
  { name:'Miso', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/bowl-with-spoon_1f963.png'}
  { name:'Soybeans', img_url: 'https://mpng.pngfly.com/20180218/ldw/kisspng-edamame-soy-milk-korean-cuisine-soybean-clip-art-soybean-cliparts-5a897bbb824105.8640147915189595475335.jpg'}
  { name:'Daikon', img_url: 'https://previews.123rf.com/images/primulakat/primulakat1611/primulakat161100040/68354990-parsnip-colored-botanical-illustration-product-to-prepare-delicious-and-healthy-food-isolated-on-whi.jpg'}
  { name:'Onion', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/emojione/211/onion_1f9c5.png'}
  { name:'Garlic', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/emojipedia/181/garlic_1f9c4.png'}
  { name:'Yuzu', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/lemon_1f34b.png'}
  { name:'Wasabi', img_url: ''}
  { name:'Panko', img_url: ''}
  { name:'Karashi', img_url: ''}
  { name:'Mochigome', img_url: ''}
  { name:'Maitake', img_url: ''}
  { name:'Shiso leaves', img_url: ''}
  { name:'Kinako', img_url: ''}
  { name:'Goya', img_url: ''}
  { name:'Umeboshi', img_url: ''}
  { name:'Nori', img_url: ''}
  { name:'Tako', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/octopus_1f419.png'}
]
ingredients.forEach(function(ingredient){
  console.log(ingredient)
})

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
  
{Name: 'Kobe Beef', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/cut-of-meat_1f969.png'}
{Name: 'Supearibu', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/meat-on-bone_1f356.png'}
{Name: 'Supagetti', img_url: 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/facebook/200/spaghetti_1f35d.png'}
{Name: 'Edamame', img_url: 'https://banner2.kisspng.com/20180306/goq/kisspng-soybean-royalty-free-clip-art-stripped-peas-5a9ea2ab0e57b1.2623638315203457710588.jpg'}

