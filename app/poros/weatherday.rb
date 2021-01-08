class WeatherDay
  attr_reader :min_temp,
              :max_temp,
              :description,
              :date

  def initialize(day_weather)
    @min_temp = day_weather[:temp][:min]
    @max_temp = day_weather[:temp][:max]
    @description = day_weather[:weather][0][:description]
    @date = DateTime.strptime(day_weather[:dTime].to_s.'%s')
  end

  def fahrenheit(temp)
    (temp - 273.15) * (9/5) + 32
  end

  def celsius(temp)
    (temp - 273.15)
  end
end
