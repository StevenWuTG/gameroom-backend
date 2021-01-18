class Article < ApplicationRecord
    has_many :article_ratings
    belongs_to :game
    has_many :users, through: :article_ratings

end
