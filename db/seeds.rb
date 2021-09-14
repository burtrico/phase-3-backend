puts "🌱 Seeding spices..."

puts "Deleting old data..."
Asset.destroy_all
User.destroy_all
Rating.destroy_all

puts "Creating users..."
user1 = User.create(name: "Ray")
user2 = User.create(name: "Burt")
user3 = User.create(name: "Sam")

puts "Creating assets..."
asset1 = Asset.create(name: "Microsoft", price: 299.83)
asset2 = Asset.create(name: "Tesla", price: 740.14)
asset3 = Asset.create(name: "Disney", price: 5)
asset4 = Asset.create(name: "Ethereum", price: 3377)
asset5 = Asset.create(name: "Bitcoin", price: 47231)

puts "Creating ratings..."
# *****************************************************************
# * TODO: create ratings! Remember, a rating belongs to a asset *
# * and a rating belongs to an user.                              *
# *****************************************************************
# Create ratings Here
rating1 = Rating.create(star_rating: 5, comment: "Microsoft is the best!", user_id: user2.id, asset_id: asset1.id)
rating2 = Rating.create(star_rating: 4, comment: "Tesla is cool yo!", user_id: user1.id, asset_id: asset2.id)
rating3 = Rating.create(star_rating: 3, comment: "Lion King is my favorite", user_id: user3.id, asset_id: asset3.id)
rating4 = Rating.create(star_rating: 5, comment: "Ultra Sound Money", user_id: user3.id, asset_id: asset4.id)
rating5 = Rating.create(star_rating: 1, comment: "Bitcoin is boring", user_id: user1.id, asset_id: asset5.id)

rating6 = Rating.create(star_rating: 3, comment: "Microsfot is ok ...", user_id: user3.id, asset_id: asset1.id)
rating7 = Rating.create(star_rating: 4, comment: "Tesla is the sheezy my kneezy!", user_id: user2.id, asset_id: asset2.id)
rating8 = Rating.create(star_rating: 2, comment: "Disney Plus charges too much", user_id: user1.id, asset_id: asset3.id)
rating9 = Rating.create(star_rating: 5, comment: "Ethereum is the blue chip of crypto", user_id: user3.id, asset_id: asset4.id)
rating10 = Rating.create(star_rating: 4, comment: "I'm a Bitcoin bro!", user_id: user2.id, asset_id: asset5.id)

puts "✅ Done seeding!"
