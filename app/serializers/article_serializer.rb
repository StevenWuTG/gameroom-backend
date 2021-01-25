class ArticleSerializer < ActiveModel::Serializer
  attributes :id,:title, :content, :author,:img_url, :video_url,:created_at

  has_many :article_ratings
  has_many :article_comments
  has_many :commenters, through: :article_comments, class_name: "User"
  # belongs_to :user
  belongs_to :author, class_name: "User"
  belongs_to :game, optional: true

end
