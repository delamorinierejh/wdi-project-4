class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :auction
  validates :user_id, presence: true
end
