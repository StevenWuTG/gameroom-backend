class Article < ApplicationRecord
    has_many :article_ratings
    has_many :users, through: :article_ratings

end
