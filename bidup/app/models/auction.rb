class Auction < ApplicationRecord
  belongs_to :user
  has_many :bids
  validates :user_id, presence: true
  validates :title, length: { minimum: 1}, allow_blank: false
end
