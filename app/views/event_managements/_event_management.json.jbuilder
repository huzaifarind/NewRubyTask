json.extract! event_management, :id, :title, :description, :start_time, :end_time, :created_at, :updated_at
json.url event_management_url(event_management, format: :json)
