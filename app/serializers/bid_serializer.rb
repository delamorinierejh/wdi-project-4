class BidSerializer < ActiveModel::Serializer
  attributes :id, :amount, :auction, :user
  belongs_to :user
  belongs_to :auction
end
