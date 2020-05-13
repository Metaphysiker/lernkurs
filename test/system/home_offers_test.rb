require "application_system_test_case"

class HomeOffersTest < ApplicationSystemTestCase
  setup do
    @home_offer = home_offers(:one)
  end

  test "visiting the index" do
    visit home_offers_url
    assert_selector "h1", text: "Home Offers"
  end

  test "creating a Home offer" do
    visit home_offers_url
    click_on "New Home Offer"

    click_on "Create Home offer"

    assert_text "Home offer was successfully created"
    click_on "Back"
  end

  test "updating a Home offer" do
    visit home_offers_url
    click_on "Edit", match: :first

    click_on "Update Home offer"

    assert_text "Home offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Home offer" do
    visit home_offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home offer was successfully destroyed"
  end
end
