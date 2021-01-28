class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre,:img_url,:img_url2,:img_url2,:img_url3,:video_url,:description, :publisher, :release_date

  has_many :game_ratings
  

end
