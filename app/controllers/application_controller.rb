require 'pry'
require './config/environment'
require './app/services/weather_service'

class ApplicationController < Sinatra::Base
  get '/api/v1/weather' do
    data = WeatherService.weather_search(params)
  end
end
