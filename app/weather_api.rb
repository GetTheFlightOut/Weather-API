require 'sinatra'
require 'faraday'

get '/' do
  "Hello!!"
  response = Faraday.get('http://api.openweathermap.org/data/2.5/weather?q=Denver&appid=ce52d7922f4e514edc2340e0ee2f2e08')

  response.body
end

get '/about' do
  "GETTIN IT"
end
