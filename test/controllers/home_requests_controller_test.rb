require 'test_helper'

class HomeRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_request = home_requests(:one)
  end

  test "should get index" do
    get home_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_home_request_url
    assert_response :success
  end

  test "should create home_request" do
    assert_difference('HomeRequest.count') do
      post home_requests_url, params: { home_request: {  } }
    end

    assert_redirected_to home_request_url(HomeRequest.last)
  end

  test "should show home_request" do
    get home_request_url(@home_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_request_url(@home_request)
    assert_response :success
  end

  test "should update home_request" do
    patch home_request_url(@home_request), params: { home_request: {  } }
    assert_redirected_to home_request_url(@home_request)
  end

  test "should destroy home_request" do
    assert_difference('HomeRequest.count', -1) do
      delete home_request_url(@home_request)
    end

    assert_redirected_to home_requests_url
  end
end
