class AddUploadImgToAuctions < ActiveRecord::Migration[5.0]
  def change
    add_column :auctions, :upload_img, :string
  end
end
