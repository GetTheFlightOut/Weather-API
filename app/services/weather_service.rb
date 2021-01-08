class WeatherService
  class << self 
    def get_weather(params)
      lat = params[:lat]
      lon = params[:lon]
      
      var = conn.get("/data/2.5/onecall") do |req|
        params.each do |key,value|
          req.params[key] = value
        end
      end
    end 
      
    def conn
      Faraday.new(url: "http://api.openweathermap.org") do |req|
        req.params["appid"] = ENV['WEATHER_API_KEY']
      end 
    end
  end
end