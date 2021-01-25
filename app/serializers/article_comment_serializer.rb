class ArticleCommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user
  has_one :article
  has_one :user
end
