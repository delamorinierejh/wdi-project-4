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

u1.auctions.create!(
  title: "Dinner for two",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "http://fillmurray.com/g/200/200",
  reserve: 100,
  end_date: (Time.now + (60*60*3)),
  charity: 184362,
)

u2.auctions.create!(
  title: "Round of golf",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "http://fillmurray.com/200/200",
  reserve: 50,
  end_date: (Time.now + (60*60*6)),
  charity: 186147,
)

u2.auctions.create!(
  title: "Pizza",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  auction_img: "http://fillmurray.com/200/200",
  reserve: 30,
  end_date: (Time.now + (60*60*2)),
  charity: 186147,
)

u2.bids.create!(
  amount: 105,
  auction_id: 1
)

u1.bids.create!(
  amount: 130,
  auction_id: 2
)
