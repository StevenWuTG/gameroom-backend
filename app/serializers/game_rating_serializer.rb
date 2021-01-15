class GameRatingSerializer < ActiveModel::Serializer
  attributes :id, :star
  has_one :user
  has_one :game
end
