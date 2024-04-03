require "test_helper"

class EventManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_management = event_managements(:one)
  end

  test "should get index" do
    get event_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_event_management_url
    assert_response :success
  end

  test "should create event_management" do
    assert_difference("EventManagement.count") do
      post event_managements_url, params: { event_management: { description: @event_management.description, end_time: @event_management.end_time, start_time: @event_management.start_time, title: @event_management.title } }
    end

    assert_redirected_to event_management_url(EventManagement.last)
  end

  test "should show event_management" do
    get event_management_url(@event_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_management_url(@event_management)
    assert_response :success
  end

  test "should update event_management" do
    patch event_management_url(@event_management), params: { event_management: { description: @event_management.description, end_time: @event_management.end_time, start_time: @event_management.start_time, title: @event_management.title } }
    assert_redirected_to event_management_url(@event_management)
  end

  test "should destroy event_management" do
    assert_difference("EventManagement.count", -1) do
      delete event_management_url(@event_management)
    end

    assert_redirected_to event_managements_url
  end
end
