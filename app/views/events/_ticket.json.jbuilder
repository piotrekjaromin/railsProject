json.extract! event, :id, :artist, :description, :price_low, :price_high, :event_date
json.url event_url(event, format: :json)
