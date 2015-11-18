json.array!(@events) do |event|
  json.extract! event, :id, :event_date, :event_time, :location, :description
  json.url event_url(event, format: :json)
end
