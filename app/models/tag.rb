class Tag < ApplicationRecord
  has_many :restaurant_tags
  has_many :restaurants, through: :restaurant_tags
  has_many :food_item_tags
  has_many :food_items, through: :food_item_tags
end
