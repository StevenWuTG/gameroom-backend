class ArticleRatingSerializer < ActiveModel::Serializer
  attributes :id, :star
  has_one :user
  has_one :article
end
