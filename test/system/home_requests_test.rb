require "application_system_test_case"

class HomeRequestsTest < ApplicationSystemTestCase
  setup do
    @home_request = home_requests(:one)
  end

  test "visiting the index" do
    visit home_requests_url
    assert_selector "h1", text: "Home Requests"
  end

  test "creating a Home request" do
    visit home_requests_url
    click_on "New Home Request"

    click_on "Create Home request"

    assert_text "Home request was successfully created"
    click_on "Back"
  end

  test "updating a Home request" do
    visit home_requests_url
    click_on "Edit", match: :first

    click_on "Update Home request"

    assert_text "Home request was successfully updated"
    click_on "Back"
  end

  test "destroying a Home request" do
    visit home_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home request was successfully destroyed"
  end
end
