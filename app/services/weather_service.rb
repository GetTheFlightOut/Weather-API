class WeatherService
  def self.conn
    Faraday.new(url: 'http://api.openweathermap.org') do |req|
      req.params['appid'] = ENV['WEATHER_API_KEY']
    end
  end

  def self.weather_search(params)
    response = conn.get('/data/2.5/onecall') do |req|
      req.params['lat'] = params[:lat]
      req.params['lon'] = params[:lon]
    end
    parse_data(response)
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
