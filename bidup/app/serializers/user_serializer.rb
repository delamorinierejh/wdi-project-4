class UserSerializer < ActiveModel::Serializer
  has_many :auctions
  has_many :bids
  attributes :id, :username, :full_name, :profile_img

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
