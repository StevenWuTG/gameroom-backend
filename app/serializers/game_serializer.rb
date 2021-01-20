class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre,:img_url,:img_url2,:img_url2,:img_url3,:video_url

  has_many :game_ratings
  

end
