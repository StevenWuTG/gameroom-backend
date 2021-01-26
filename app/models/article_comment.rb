class ArticleComment < ApplicationRecord
  belongs_to :article
  belongs_to :commenter, class_name: "User"

  validates  :content, :commenter_id,:article_id, presence: true
  # validates  :content, :commenter_id,:article_id, uniqueness: true
end
