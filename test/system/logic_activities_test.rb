require "application_system_test_case"

class LogicActivitiesTest < ApplicationSystemTestCase
  setup do
    @logic_activity = logic_activities(:one)
  end

  test "visiting the index" do
    visit logic_activities_url
    assert_selector "h1", text: "Logic Activities"
  end

  test "creating a Logic activity" do
    visit logic_activities_url
    click_on "New Logic Activity"

    fill_in "Correctness", with: @logic_activity.correctness
    fill_in "Exercise", with: @logic_activity.exercise
    click_on "Create Logic activity"

    assert_text "Logic activity was successfully created"
    click_on "Back"
  end

  test "updating a Logic activity" do
    visit logic_activities_url
    click_on "Edit", match: :first

    fill_in "Correctness", with: @logic_activity.correctness
    fill_in "Exercise", with: @logic_activity.exercise
    click_on "Update Logic activity"

    assert_text "Logic activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Logic activity" do
    visit logic_activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Logic activity was successfully destroyed"
  end
end
