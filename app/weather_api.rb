require 'sinatra'
require 'faraday'
require 'json'
require 'pry'
# require_relative './config/application'


# class WeatherApi < Sinatra::Base


  get '/api/v1/weather/new_york' do
    conn = Faraday.new(url: "http://api.openweathermap.org")

    response = conn.get("/data/2.5/weather?") do |req|
      req.params["q"] = "New York"
      # req.params["appid"] =

      req.params["appid"] = ENV['WEATHER_API_KEY']
    end
  end

    # q=Denver&appid=#{ENV['WEATHER_API_KEY']}



    # response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?q=Denver&appid=#{ENV[WEATHER_API_KEY]}")
    # response = Faraday.get("http://api.openweathermap.org/data/2.5/weather?q=Denver&appid=")
