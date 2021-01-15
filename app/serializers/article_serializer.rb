class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :content, :video_url, :img_url,:author

  has_many :article_ratings
  has_many :users, through: :article_ratings

end
