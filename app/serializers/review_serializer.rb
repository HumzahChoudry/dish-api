class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :hospitality_rating, :ambience_rating, :restaurant#, :user
  # belongs_to :restaurant, serializer: ReviewRestaurantSerializer
  # belongs_to :user, serializer: ReviewUserSerializer
end
