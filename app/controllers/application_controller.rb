require 'pry'
require './config/environment'

class ApplicationController < Sinatra::Base

  get "/api/v1/weather" do
    response = WeatherService.get_weather(params)
    data = JSON :data => JSON.parse(response.body)
  end
end
