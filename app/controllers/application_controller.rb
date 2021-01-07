require 'pry'
require './config/environment'

class ApplicationController < Sinatra::Base

  get "/" do
    conn = Faraday.new(url: "http://api.openweathermap.org")

    response = conn.get("/data/2.5/onecall") do |req|
      req.params["lat"] = "35"
      req.params["lon"] = "139"
      req.params["appid"] = ENV['WEATHER_API_KEY']
    end

    data = JSON :data => JSON.parse(response.body)

  end
end
