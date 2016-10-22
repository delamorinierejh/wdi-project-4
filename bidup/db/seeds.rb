Bid.destroy_all
Auction.destroy_all
User.destroy_all

u1 = User.create!(
  username: "johnnie",
  first_name: "Johnnie",
  last_name: "Byng",
  email: "johnnie@johnnie.com",
  password: "password",
  password_confirmation: "password",
)

u1.auctions.create!(
  title: "Dinner for two",
  description: "I'm going to cook you dinner",
  auction_img: "http://fillmurray.com/g/200/200",
  reserve: 100,
  length_of_auction: 4,
  charity: "The Anna Trust",
)

u1.bids.create!(
  amount: 25,
  auction_id: 2
)
