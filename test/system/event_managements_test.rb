require "application_system_test_case"

class EventManagementsTest < ApplicationSystemTestCase
  setup do
    @event_management = event_managements(:one)
  end

  test "visiting the index" do
    visit event_managements_url
    assert_selector "h1", text: "Event managements"
  end

  test "should create event management" do
    visit event_managements_url
    click_on "New event management"

    fill_in "Description", with: @event_management.description
    fill_in "End time", with: @event_management.end_time
    fill_in "Start time", with: @event_management.start_time
    fill_in "Title", with: @event_management.title
    click_on "Create Event management"

    assert_text "Event management was successfully created"
    click_on "Back"
  end

  test "should update Event management" do
    visit event_management_url(@event_management)
    click_on "Edit this event management", match: :first

    fill_in "Description", with: @event_management.description
    fill_in "End time", with: @event_management.end_time
    fill_in "Start time", with: @event_management.start_time
    fill_in "Title", with: @event_management.title
    click_on "Update Event management"

    assert_text "Event management was successfully updated"
    click_on "Back"
  end

  test "should destroy Event management" do
    visit event_management_url(@event_management)
    click_on "Destroy this event management", match: :first

    assert_text "Event management was successfully destroyed"
  end
end
