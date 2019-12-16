require 'test_helper'

class LogicActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logic_activity = logic_activities(:one)
  end

  test "should get index" do
    get logic_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_logic_activity_url
    assert_response :success
  end

  test "should create logic_activity" do
    assert_difference('LogicActivity.count') do
      post logic_activities_url, params: { logic_activity: { correctness: @logic_activity.correctness, exercise: @logic_activity.exercise } }
    end

    assert_redirected_to logic_activity_url(LogicActivity.last)
  end

  test "should show logic_activity" do
    get logic_activity_url(@logic_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_logic_activity_url(@logic_activity)
    assert_response :success
  end

  test "should update logic_activity" do
    patch logic_activity_url(@logic_activity), params: { logic_activity: { correctness: @logic_activity.correctness, exercise: @logic_activity.exercise } }
    assert_redirected_to logic_activity_url(@logic_activity)
  end

  test "should destroy logic_activity" do
    assert_difference('LogicActivity.count', -1) do
      delete logic_activity_url(@logic_activity)
    end

    assert_redirected_to logic_activities_url
  end
end
