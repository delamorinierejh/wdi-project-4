class AuctionsController < ApplicationController
  before_action :set_auction, only: [:show, :update, :destroy]
  before_action :update_auctions
  # before_action :process_params, only: [:create, :update]
  # before_action :destroy_bids, only: :destroy

  # GET /auctions
  def index
    @auctions = Auction.where(status:"live")

    render json: @auctions
  end

  # GET /auctions/1
  def show
    render json: @auction
  end

  # POST /auctions
  def create
    # file_arr = params.values.find_all { |value|
    #   value.class == ActionDispatch::Http::UploadedFile
    # }
    @auction = current_user.auctions.new(auction_params)
    @auction.upload_img = params[:file]

    if @auction.save
      p @auction
      render json: @auction, status: :created, location: @auction
    else
      render json: @auction.errors, status: :unprocessable_entity
    end
  end



  # PATCH/PUT /auctions/1
  def update
    if @auction.update(auction_params)
      render json: @auction
    else
      render json: @auction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /auctions/1
  def destroy
    @auction.bids.destroy_all
    @auction.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_auction
    @auction = Auction.find(params[:id])
  end

  def update_auctions
    Auction.where("end_date < ?", Time.now).find_each do |auction|
      auction.update(status: "finished")
      p "#{auction.title} has finished"
    end
  end

  # Only allow a trusted parameter "white list" through.
  def auction_params
    params.require(:auction).permit(:user_id, :title, :description, :auction_img, :reserve, :length_of_auction, :charity, :start_date, :end_date, :high_bid_user_id, :upload_img)
  end

  def process_params
     params[:auction] = JSON.parse(params[:auction])
                                .with_indifferent_access

     if params[:file]
       params[:auction][:upload_img] = params[:file]
     end
  end

end
