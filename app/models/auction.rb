class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids
  validates :user_id, presence: true
  validates :charity, presence: true
  validates :title, length: { minimum: 1}, allow_blank: false
  validates :description, length: { maximum: 450}, allow_blank: false

  # has_attached_file :upload_img, s3_permissions: private
  # # has_attached_file :file, s3_permissions: private
  #
  # validates_attachment_content_type :upload_img,
  #                                   content_type: ["image/jpeg", "image/png"]
  mount_uploader :upload_img, AuctionImgUploader


  before_create :set_default_status

  private

  def set_default_status
    self.status = "live"
  end

end
