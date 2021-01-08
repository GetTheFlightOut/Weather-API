class WeatherFacade
  def self.daily_weather(params)
    results = WeatherService.weather_search(params)
    get_weather(results)
  end

  def self.get_weather(results)
    results[:daily].map do |day|
      WeatherDay.new(day)
    end
  end
end
