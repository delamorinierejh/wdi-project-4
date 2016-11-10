class User < ApplicationRecord
  has_secure_password
  has_many :auctions
  has_many :bids
  validates :username, presence: true, uniqueness: true
end
