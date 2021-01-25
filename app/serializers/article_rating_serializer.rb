class ArticleRatingSerializer < ActiveModel::Serializer
  attributes :id, :star
  
  has_one :article
  has_one :rater, class_name: "User"
end
