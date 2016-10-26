class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids
  validates :user_id, presence: true
  validates :title, length: { minimum: 1}, allow_blank: false

  before_create :set_default_status

  private

  def set_default_status
    self.status = "live"
  end

end
