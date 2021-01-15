class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre

  has_many :game_ratings
  

end
