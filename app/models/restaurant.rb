class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :food_items
  has_many :restaurant_tags
  has_many :tags, through: :restaurant_tags
end
