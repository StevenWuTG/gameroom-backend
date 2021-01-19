class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title, :content, :author,:img_url, :video_url

  has_many :article_ratings
  has_many :users, through: :article_ratings

end
