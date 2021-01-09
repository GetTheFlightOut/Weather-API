require 'pry'
require './config/environment'
require './app/services/weather_service'

class ApplicationController < Sinatra::Base
  get '/api/v1/weather' do
    weather_days = WeatherFacade.daily_weather(params)

    if weather_days.instance_of?(Array)
      JSON WeatherSerializer.new(weather_days)
    else
      JSON weather_days
    end
  end
end
