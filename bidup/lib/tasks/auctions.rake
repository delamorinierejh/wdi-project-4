namespace :auctions do
  desc "Auction status update upon expiry"
  task expire: :environment do
    p "running task"
    Auction.where("end_date < ?", Time.now).find_each do |auction|
      auction.update(status: "finished")
      p "#{auction.title} has finished"
    end
  end

end
