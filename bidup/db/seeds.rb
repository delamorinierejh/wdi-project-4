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

u2 = User.create!(
  username: "alex",
  first_name: "Alex",
  last_name: "Chin",
  email: "alex@alex.com",
  password: "password",
  password_confirmation: "password",
)

u1.auctions.create!(
  title: "Dinner for two",
  description: "I'm going to cook you dinner",
  auction_img: "http://fillmurray.com/g/200/200",
  reserve: 100,
  end_date: (Time.now + (60*60*3)),
  charity: 184362,
)

u2.auctions.create!(
  title: "Round of golf",
  description: "18 holes at Rushmore",
  auction_img: "http://fillmurray.com/200/200",
  reserve: 50,
  end_date: (Time.now + (60*60*6)),
  charity: 186147,
)

u2.bids.create!(
  amount: 5,
  auction_id: 1
)

u1.bids.create!(
  amount: 35,
  auction_id: 2
)
