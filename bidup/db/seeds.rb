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
  profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAhAAAAAJDI3OGNhMWEwLTQxMGQtNGEyYS05NWY3LWU3MWJhZjEzOWM3MA.jpg"
)

u2 = User.create!(
  username: "alex",
  first_name: "Alex",
  last_name: "Chin",
  email: "alex@alex.com",
  password: "password",
  password_confirmation: "password",
  profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/4/005/097/21e/11d164d.jpg"
)

u3 = User.create!(
  username: "victoria",
  first_name: "Victoria",
  last_name: "Lyon",
  email: "victoria@victoria.com",
  password: "password",
  password_confirmation: "password",
  profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAW7AAAAJDE4YTk1ZDY5LTYxNDItNDBhZC1hMzhhLTdkNjliNmIwNTVjNQ.jpg"
)

u4 = User.create!(
  username: "oxy",
  first_name: "Tom",
  last_name: "Oxenham",
  email: "oxy@oxy.com",
  password: "password",
  password_confirmation: "password",
  profile_img: "https://pbs.twimg.com/profile_images/546634620759187456/NzOxpqk5.jpeg"
)

u5 = User.create!(
  username: "heston",
  first_name: "Heston",
  last_name: "Blumenthal",
  email: "heston@heston.com",
  password: "password",
  password_confirmation: "password",
  profile_img: "http://i.huffpost.com/gen/2111270/thumbs/o-HESTON-BLUMENTHAL-570.jpg?8"
)

u1.auctions.create!(
  title: "Dinner for two",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "http://golf4good.org/wp-content/uploads/2016/05/dinner.jpg",
  reserve: 100,
  end_date: (Time.now + (60*60*3)),
  charity: 184362,
  high_bid_user_id: 3
)

u2.auctions.create!(
  title: "Round of golf",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Golf_ball_resting_near_fairway_wood.jpg",
  reserve: 60,
  end_date: (Time.now + (60*60*6)),
  charity: 186147,
  high_bid_user_id: 1
)

u3.auctions.create!(
  title: "Opera Tickets",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/01/08/18/pg-30-italy-opera-ap.jpg",
  reserve: 30,
  end_date: (Time.now + (60*60*28)),
  charity: 186147,
)

u4.auctions.create!(
  title: "French Lessons",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "http://vignette1.wikia.nocookie.net/empiresandallies/images/7/74/1972French_flag.jpg",
  reserve: 50,
  end_date: (Time.now + (30)),
  charity: 88,
  high_bid_user_id: 2
)

u5.auctions.create!(
  title: "Dinner at Dinner",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "https://gourmettraveller.files.wordpress.com/2011/02/dhb_meatfruit.jpg",
  reserve: 400,
  end_date: (Time.now + (60*60*3)),
  charity: 188,
)

u2.bids.create!(
  amount: 105,
  auction_id: 1
)

u1.bids.create!(
  amount: 130,
  auction_id: 2
)

u3.bids.create!(
  amount: 125,
  auction_id: 1
)

u2.bids.create!(
  amount: 140,
  auction_id: 4
)
