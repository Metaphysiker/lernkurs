require 'test_helper'

class OfferersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offerer = offerers(:one)
  end

  test "should get index" do
    get offerers_url
    assert_response :success
  end

  test "should get new" do
    get new_offerer_url
    assert_response :success
  end

  test "should create offerer" do
    assert_difference('Offerer.count') do
      post offerers_url, params: { offerer: {  } }
    end

    assert_redirected_to offerer_url(Offerer.last)
  end

  test "should show offerer" do
    get offerer_url(@offerer)
    assert_response :success
  end

  test "should get edit" do
    get edit_offerer_url(@offerer)
    assert_response :success
  end

  test "should update offerer" do
    patch offerer_url(@offerer), params: { offerer: {  } }
    assert_redirected_to offerer_url(@offerer)
  end

  test "should destroy offerer" do
    assert_difference('Offerer.count', -1) do
      delete offerer_url(@offerer)
    end

    assert_redirected_to offerers_url
  end
end
