require 'test_helper'

class HomeOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_offer = home_offers(:one)
  end

  test "should get index" do
    get home_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_home_offer_url
    assert_response :success
  end

  test "should create home_offer" do
    assert_difference('HomeOffer.count') do
      post home_offers_url, params: { home_offer: {  } }
    end

    assert_redirected_to home_offer_url(HomeOffer.last)
  end

  test "should show home_offer" do
    get home_offer_url(@home_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_offer_url(@home_offer)
    assert_response :success
  end

  test "should update home_offer" do
    patch home_offer_url(@home_offer), params: { home_offer: {  } }
    assert_redirected_to home_offer_url(@home_offer)
  end

  test "should destroy home_offer" do
    assert_difference('HomeOffer.count', -1) do
      delete home_offer_url(@home_offer)
    end

    assert_redirected_to home_offers_url
  end
end
