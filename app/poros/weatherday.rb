class WeatherDay
  attr_reader :min_f,
              :max_f,
              :min_c,
              :max_c,
              :day_feels_like_f,
              :day_feels_like_c,
              :description,
              :date,
              :sky_coverage

  def initialize(day_weather)
    @min_f = fahrenheit(day_weather[:temp][:min])
    @max_f = fahrenheit(day_weather[:temp][:max])
    @min_c = celsius(day_weather[:temp][:min])
    @max_c = celsius(day_weather[:temp][:max])
    @day_feels_like_f = fahrenheit(day_weather[:feels_like][:day])
    @day_feels_like_c = celsius(day_weather[:feels_like][:day])
    @description = day_weather[:weather][0][:description]
    @date = DateTime.strptime(day_weather[:dt].to_s, '%s')
    @sky_coverage = day_weather[:clouds]
  end

  def fahrenheit(temp)
    (temp - 273.15) * (9 / 5) + 32
  end

  def celsius(temp)
    (temp - 273.15)
  end
end
