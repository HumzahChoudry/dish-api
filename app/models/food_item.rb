class FoodItem < ApplicationRecord
  belongs_to :restaurant
  has_many :review_items
  has_many :reviews, through: :review_items
end
