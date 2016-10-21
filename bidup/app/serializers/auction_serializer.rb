class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :auction_img, :reserve, :length_of_auction, :charity
  has_one :user

  def length
    object.body.length
  end

  def url
    Rails.application.routes.url_helpers.post_url object, only_path: true
  end
end
