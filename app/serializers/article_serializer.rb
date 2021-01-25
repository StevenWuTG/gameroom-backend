class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title, :content, :author,:img_url, :video_url,:created_at

  has_many :article_ratings
  has_many :article_comments
  has_many :users, through: :article_ratings
  belongs_to :game, optional: true

end
