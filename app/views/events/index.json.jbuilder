json.array!(@events) do |event|
  json.extract! event, :id, :date, :description, :title, :user_id, :url, :email, :address, :latitude, :longitude
  json.url event_url(event, format: :json)
end
