class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :active_relationships, :passive_relationships
  has_many :reviews, serializer: ReviewSerializer
   #:following_ids, :follower_ids

  # def following_ids
  #   self.object.active_relationships.map { |ar| ar.followed_id }
  # end
  #
  # def follower_ids
  #   self.object.passive_relationships.map { |pr| pr.follower_id }
  # end
end
