require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "creating a Application" do
    visit applications_url
    click_on "New Application"

    fill_in "Aboutme", with: @application.aboutme
    fill_in "City", with: @application.city
    fill_in "Email", with: @application.email
    fill_in "Expectation", with: @application.expectation
    fill_in "Firstname", with: @application.firstname
    fill_in "Food", with: @application.food
    fill_in "Lastname", with: @application.lastname
    fill_in "Motivation", with: @application.motivation
    fill_in "Payment", with: @application.payment
    fill_in "Plz", with: @application.plz
    fill_in "Street", with: @application.street
    fill_in "Telefon", with: @application.telefon
    fill_in "Thoughts", with: @application.thoughts
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "updating a Application" do
    visit applications_url
    click_on "Edit", match: :first

    fill_in "Aboutme", with: @application.aboutme
    fill_in "City", with: @application.city
    fill_in "Email", with: @application.email
    fill_in "Expectation", with: @application.expectation
    fill_in "Firstname", with: @application.firstname
    fill_in "Food", with: @application.food
    fill_in "Lastname", with: @application.lastname
    fill_in "Motivation", with: @application.motivation
    fill_in "Payment", with: @application.payment
    fill_in "Plz", with: @application.plz
    fill_in "Street", with: @application.street
    fill_in "Telefon", with: @application.telefon
    fill_in "Thoughts", with: @application.thoughts
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "destroying a Application" do
    visit applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application was successfully destroyed"
  end
end
