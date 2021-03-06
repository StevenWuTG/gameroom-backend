class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :bio, :avatar, :email, :admin

  

    # has_many :articles
    has_many :articles, foreign_key: "author_id"
    # has_many :article_ratings,through: :articles
    # has_many :article_comments,through: :articles, :dependent => :delete_all
    # has_many :commenters, through: :article_comments, class_name: "User"
    # has_many :articles, through: :article_ratings
    # has_many :game_ratings, :dependent => :delete_all
    # has_many :games, through: :game_ratings
    has_many :followings
    has_many :follows, through: :followings, class_name: "User"
end
