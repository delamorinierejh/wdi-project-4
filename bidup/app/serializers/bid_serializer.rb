class BidSerializer < ActiveModel::Serializer
  attributes :id, :amount
  has_one :user
end
