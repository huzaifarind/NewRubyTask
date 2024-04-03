require "test_helper"

class CalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get calendar_home_url
    assert_response :success
  end
end
