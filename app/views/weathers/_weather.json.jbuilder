json.extract! weather, :id, :day, :month, :year, :solstice, :minTemp, :maxTemp, :created_at, :updated_at
json.url weather_url(weather, format: :json)
