class Review < ApplicationRecord
  has_many :review_items
  belongs_to :user
  belongs_to :restaurant
end
