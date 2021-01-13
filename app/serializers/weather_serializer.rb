class WeatherSerializer
  def self.new(weather_days)
    json = {}
    json[:data] = []
    weather_days.each do |day|
      weather_day = { type: 'weather', id: nil, attributes: {} }
      weather_day[:attributes][:min_f] = day.min_f
      weather_day[:attributes][:max_f] = day.max_f
      weather_day[:attributes][:min_c] = day.min_c
      weather_day[:attributes][:max_c] = day.max_c
      weather_day[:attributes][:day_feels_like_c] = day.day_feels_like_c
      weather_day[:attributes][:day_feels_like_f] = day.day_feels_like_f
      weather_day[:attributes][:description] = day.description
      weather_day[:attributes][:date] = day.date
      weather_day[:attributes][:sky_coverage] = day.sky_coverage
      json[:data] << weather_day
    end
    json
  end
end
