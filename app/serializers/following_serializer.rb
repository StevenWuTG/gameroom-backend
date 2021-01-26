class FollowingSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :follow
end
