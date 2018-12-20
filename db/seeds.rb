# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all

user_1 = User.create!(name: "Ali", address: "Turing Cellar", city: "Denver", state: "Colorado", zipcode: 80000, email: "Ali@gmail.com", password: "1234", role: 2)
user_2 = User.create!(name: "Aaron", address: "Turing Cellar", city: "Denver", state: "Colorado", zipcode: 80000, email: "Aaron@gmail.com", password: "1234", role: 2)
user_3 = User.create!(name: "Lance", address: "Turing Cellar", city: "Denver", state: "Colorado", zipcode: 80000, email: "Lance@gmail.com", password: "1234", role: 2)
user_4 = User.create!(name: "Justin", address: "Turing Cellar", city: "Denver", state: "Colorado", zipcode: 80000, email: "Justin@gmail.com", password: "1234", role: 2)
user_5 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name, role: 1)
user_6 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name, role: 1)
user_7 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name, role: 1)
user_8 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name, role: 1)
user_9 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)
user_10 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)
user_11 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)
user_12 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)
user_13 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)
user_14 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)
user_15 = User.create!(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address , city: Faker::Address.unique.city, state: Faker::Address.state, zipcode: Faker::Address.unique.zip, email: Faker::Internet.unique.safe_email, password: Faker::Dog.unique.name)



Item.create!(item_name: "Hot Dog", image_url: "https://images-na.ssl-images-amazon.com/images/I/41TWffIcWxL._SL500_AC_SS350_.jpg", inventory: 10, price: 25, user: user_8, description: "DOG COSTUMES")
Item.create!(item_name: "Holiday Tails Light-Up Royal Fir Dog Hoodie", image_url: "https://petco.scene7.com/is/image/PETCO/2875901-center-1?$ProductDetail-large$", inventory: 20, price: 15, user: user_8, description: "DOG COSTUMES")
Item.create!(item_name: "Star Wars Bantha Dog Costume", image_url: "https://wholesalehalloweencostumes-weblinc.netdna-ssl.com/product_images/star-wars-bantha-dog-costume/5756e41d69702d07970003c1/zoom.jpg?c=1496432434", inventory: 10, price: 25, user: user_8, description: "DOG COSTUMES")
Item.create!(item_name: "Turtle Dog Costume", image_url: "https://img.wondercostumes.com/products/12-3/turtle-dog-costume.jpg ", inventory: 10, price: 25, user: user_8, description: "DOG COSTUMES")
Item.create!(item_name: "Unicorn Dog", image_url: "https://www.chewy.com/petcentral/wp-content/uploads/2018/08/29736886_1819080608391969_6113152043319296000_n.jpg", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Beer Carrying Dog", image_url: "https://www.chewy.com/petcentral/wp-content/uploads/2018/08/23417048_164385327490239_6690468868504158208_n.jpg", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Walrus Dog Costume", image_url: "https://www.detectview.com/wp-content/uploads/2018/05/Walrus-Pet-Halloween-Costume.jpg", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Hammerhead Shark Dog Costume", image_url: "https://images-na.ssl-images-amazon.com/images/I/81Bx1l67SpL._SX466_.jpg", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Mermaid Dog Costume", image_url: "https://partycity4.scene7.com/is/image/PartyCity/_mobile_?$_600x400_$&$product=PartyCity/P815188_full", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Musician Dog Costume", image_url: "https://images-na.ssl-images-amazon.com/images/I/51gdCPc-bkL._SL500_AC_SS350_.jpg", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Stegosaurus Dog Costume", image_url: "https://images-na.ssl-images-amazon.com/images/I/41Q-6cQEOLL._SL500_AC_SS350_.jpg", inventory: 10, price: 25, user: user_5, description: "DOG COSTUMES")
Item.create!(item_name: "Donald Duck Dog Costume", image_url: "https://media1.popsugar-assets.com/files/thumbor/QXIiK3UtIEflF6S1-P6JFRo1z_o/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2018/09/20/984/n/24155406/707bc2d25ba4214963eb57.45679332_/i/Disney-Pet-Costumes.jpg", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Lion Dog Costume", image_url: "https://ae01.alicdn.com/kf/HTB1ew55u7yWBuNjy0Fpq6yssXXaR/NOCM-Criniere-wig-for-Halloween-Lion-Clothing-Dog-Costume-Brown.jpg", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Hockey Dog Costume", image_url: "http://www.celebritydachshund.com/wp-content/uploads/2017/01/ball-hockey-crusoe-1024x1020.jpg", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Ghostbuster Dog Costume", image_url: "https://costumesupercenter-weblinc.netdna-ssl.com/product_images/pets-ghostbusters-jumpsuit-dog-costume/573d480b69702d70de001507/large_thumb.jpg?c=1535022835", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Turkey Dog Costume", image_url: "https://media1.popsugar-assets.com/files/thumbor/FlFJU7C0ya_w5Rn7gsxahrE0mCA/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2018/10/05/716/n/24155406/72f1815eb28b8585_netimgmSmoNz/i/Turkey-Dog-Costume.webp", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Banana Dog Costume", image_url: "https://i.pinimg.com/originals/6d/d8/be/6dd8bee2c35400a174fa7eff20b5c522.jpg", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Lobster Dog Costume", image_url: "https://cdn3.volusion.com/uxmhm.qxgbz/v/vspfiles/photos/68243-2.jpg?1540987821", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Cupcake Dog Costume", image_url: "https://i.ebayimg.com/images/g/z4UAAOSwfrxZ15Ie/s-l640.jpg", inventory: 10, price: 25, user: user_6, description: "DOG COSTUMES")
Item.create!(item_name: "Goldfish Dog Costume", image_url: "https://images-na.ssl-images-amazon.com/images/I/91XQ9tLWHAL._SX466_.jpg", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Cowboy Dog Costume", image_url: "https://images.britcdn.com/wp-content/uploads/2016/08/RRADQ.0.jpg?w=1000&auto=format", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Giraffe Dog Costume", image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1539114804-41uUguNm2nL.jpg?crop=1xw:1xh;center,top&resize=768:*", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Pirate Dog Costume", image_url: "https://purewows3.imgix.net/images/articles/2018_08/dog_pirate_costume.jpg?auto=format,compress&cs=strip", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Butterfly Dog Costume", image_url: "https://www.workingmother.com/sites/workingmother.com/files/styles/1000_1x_/public/import/2011/files/_images/201109/butterfly.jpg?itok=fe0LWjRT", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Pineapple Dog Costume", image_url: "http://www4.pictures.livingly.com/mp/9TOBMoxRFgyl.jpg", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Bumblebee Dog Costume", image_url: "https://images-na.ssl-images-amazon.com/images/I/71X4X-5LILL._SX466_.jpg", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")
Item.create!(item_name: "Sheep Dog Costume", image_url: "https://i.pinimg.com/originals/64/99/17/649917bb5702c3ed7c44b23892cd422e.jpg", inventory: 10, price: 25, user: user_7, description: "DOG COSTUMES")


p "Created #{Item.count} items"
p "Created #{User.count} users"
