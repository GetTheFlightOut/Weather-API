class WeatherFacade
  def self.daily_weather(params)
    results = WeatherService.weather_search(params)
    if results[:cod].nil?
      get_weather(results)
    else
      results
    end
  end

  def self.get_weather(results)
    results[:daily].map do |day|
      WeatherDay.new(day)
    end
  end
end
