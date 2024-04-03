class CalendarController < ApplicationController
  def home
    @event_management = EventManagement.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_week
    )
  end
end
