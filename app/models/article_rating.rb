class ArticleRating < ApplicationRecord

  belongs_to :article
  
  belongs_to :rater, class_name: "User"
  # validates :user_id, :article_id, presence: true
  # validates :user_id, :article_id, uniqueness: true
end
