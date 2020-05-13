require "application_system_test_case"

class OfferersTest < ApplicationSystemTestCase
  setup do
    @offerer = offerers(:one)
  end

  test "visiting the index" do
    visit offerers_url
    assert_selector "h1", text: "Offerers"
  end

  test "creating a Offerer" do
    visit offerers_url
    click_on "New Offerer"

    click_on "Create Offerer"

    assert_text "Offerer was successfully created"
    click_on "Back"
  end

  test "updating a Offerer" do
    visit offerers_url
    click_on "Edit", match: :first

    click_on "Update Offerer"

    assert_text "Offerer was successfully updated"
    click_on "Back"
  end

  test "destroying a Offerer" do
    visit offerers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offerer was successfully destroyed"
  end
end
