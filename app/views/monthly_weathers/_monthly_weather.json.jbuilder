json.extract! monthly_weather, :id, :month, :minTemp, :maxTemp, :created_at, :updated_at
json.url monthly_weather_url(monthly_weather, format: :json)
