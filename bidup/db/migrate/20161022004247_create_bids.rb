class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.decimal :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
