class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :auction_img, :reserve, :charity, :status, :start_date, :end_date, :high_bid_user_id, :upload_img
  belongs_to :user
  has_many :bids

  def url
    Rails.application.routes.url_helpers.post_url object, only_path: true
  end


end
