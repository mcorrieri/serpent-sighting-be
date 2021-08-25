json.extract! sighting, :id, :comment, :location, :date, :size, :user_id, :created_at, :updated_at
json.url sighting_url(sighting, format: :json)
