require 'pry'
require './config/environment'

class ApplicationController < Sinatra::Base

  get "/api/v1/weather" do
    # params = {"lat"=>"35", "lon"=>"139"}
    lat = params[:lat]
    lon = params[:lon]
    conn = Faraday.new(url: "http://api.openweathermap.org")
    
    response = conn.get("/data/2.5/onecall") do |req|
      req.params["lat"] = lat
      req.params["lon"] = lon
      req.params["appid"] = ENV['WEATHER_API_KEY']
    end
    # require 'pry'; binding.pry

    data = JSON :data => JSON.parse(response.body)
  end
end
