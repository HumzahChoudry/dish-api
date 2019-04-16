# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Restaurant.destroy_all
RestaurantTag.destroy_all
FoodItem.destroy_all
FoodItemTag.destroy_all
Review.destroy_all
ReviewItem.destroy_all

User.create(name: "Humzah", bio: "I am the creator of this app")
User.create(name: "Joe", bio: "I am NOT the creator of this app")
Restaurant.create(name: "McDonalds",description: "Americas Fast food restaurant", address: "12 Broadway")

Restaurant.create(name: "McDonalds", description: "a great new place", address: "123 ez street")
Restaurant.create(name: "BK Jani", description: "a great new place", address: "123 ez street")
Restaurant.create(name: "Cookieville", description: "a great new place", address: "123 ez street")
Restaurant.create(name: "Cookhouse", description: "a great new place", address: "123 ez street")
Restaurant.create(name: "Coo coo nest", description: "a great new place", address: "123 ez street")

FoodItem.create(name: "Big Mac", restaurant_id: 1)
FoodItem.create(name: "McChicken Sandwhich", restaurant_id: 1)
FoodItem.create(name: "French Fries", restaurant_id: 1)

Tag.create(name: "fast food")
Tag.create(name: "cheap")
Tag.create(name: "sandwhich")

RestaurantTag.create(restaurant_id: 1, tag_id: 1)
RestaurantTag.create(restaurant_id: 1, tag_id: 2)
RestaurantTag.create(restaurant_id: 1, tag_id: 3)

FoodItemTag.create(food_item_id: 1, tag_id: 3)
FoodItemTag.create(food_item_id: 2, tag_id: 2)
FoodItemTag.create(food_item_id: 2, tag_id: 3)

Review.create(user_id: 1, restaurant_id: 1, content: "Golden Arches, golden food", hospitality_score: 3, ambience: "Busy, uncofortable", ambience_score: 1)


ReviewItem.create(review_id: 1, food_item_id: 1, content: "Dank but gross", rating: 3)
