class Article < ApplicationRecord
    has_many :article_ratings, :dependent => :delete_all
    belongs_to :game, optional: true
    has_many :users, through: :article_ratings
    validates :title, :content, :author, presence: true
    validates :title, uniqueness: true
end
