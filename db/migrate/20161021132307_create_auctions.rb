class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :auction_img
      t.decimal :reserve
      t.integer :length_of_auction
      t.string :charity

      t.timestamps
    end
  end
end
