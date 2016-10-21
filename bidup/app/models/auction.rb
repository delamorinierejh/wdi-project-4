class Auction < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :body, length: { minimum: 1}, allow_blank: false
end
