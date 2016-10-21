require 'test_helper'

class AuctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auction = auctions(:one)
  end

  test "should get index" do
    get auctions_url, as: :json
    assert_response :success
  end

  test "should create auction" do
    assert_difference('Auction.count') do
      post auctions_url, params: { auction: { auction_img: @auction.auction_img, charity: @auction.charity, description: @auction.description, length_of_auction: @auction.length_of_auction, reserve: @auction.reserve, title: @auction.title, user_id: @auction.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show auction" do
    get auction_url(@auction), as: :json
    assert_response :success
  end

  test "should update auction" do
    patch auction_url(@auction), params: { auction: { auction_img: @auction.auction_img, charity: @auction.charity, description: @auction.description, length_of_auction: @auction.length_of_auction, reserve: @auction.reserve, title: @auction.title, user_id: @auction.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy auction" do
    assert_difference('Auction.count', -1) do
      delete auction_url(@auction), as: :json
    end

    assert_response 204
  end
end
