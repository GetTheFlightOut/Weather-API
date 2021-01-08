require 'pry'
require './config/environment'
require './app/services/weather_service'

class ApplicationController < Sinatra::Base
  get '/api/v1/weather' do
    @weather_days = WeatherFacade.daily_weather(params)
    JSON WeatherSerializer.new(@weather_days)
  end
end
