json.extract! trip, :id, :origin, :destination, :IGN, :created_at, :updated_at
json.url trip_url(trip, format: :json)
