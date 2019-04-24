class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :hospitality_rating, :ambience_rating
  belongs_to :restaurant, serializer: ReviewRestaurantSerializer
  belongs_to :user, serializer: ReviewUserSerializer
end
