class AddHighBidUserIdToAuctions < ActiveRecord::Migration[5.0]
  def change
    add_column :auctions, :high_bid_user_id, :integer
  end
end
