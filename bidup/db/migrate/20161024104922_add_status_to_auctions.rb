class AddStatusToAuctions < ActiveRecord::Migration[5.0]
  def change
    add_column :auctions, :status, :string
  end
end
