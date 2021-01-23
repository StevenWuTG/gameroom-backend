class User < ApplicationRecord
    has_secure_password
    
    has_many :article_ratings, :dependent => :delete_all
    has_many :articles, through: :article_ratings
    has_many :game_ratings, :dependent => :delete_all
    has_many :games, through: :game_ratings
end
