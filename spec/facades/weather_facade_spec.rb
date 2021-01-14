require 'spec_helper'
require 'json'
require 'rspec'

describe WeatherFacade do
  describe '.class_methods' do
    it 'daily_weather' do
      params = {
        lat: "35",
        lon: "139"
      }
      result = WeatherFacade.daily_weather(params)

      expect(result).to be_an(Array)
      expect(result.size).to eq(8)
      expect(result[0]).to be_a(WeatherDay)
      expect(result[0].date).to be_a(DateTime)
      expect(result[0].day_feels_like_c).to be_a(Float)
      expect(result[0].day_feels_like_f).to be_a(Float)
      expect(result[0].description).to be_a(String)
      expect(result[0].max_c).to be_a(Float)
      expect(result[0].max_f).to be_a(Float)
      expect(result[0].min_c).to be_a(Float)
      expect(result[0].min_f).to be_a(Float)
      expect(result[0].sky_coverage).to be_a(Integer)
    end

    it 'get_weather' do
      params = {
        lat: "35",
        lon: "139"
      }
      search = WeatherService.weather_search(params)
      result = WeatherFacade.get_weather(search)

      expect(result).to be_an(Array)
      expect(result.size).to eq(8)
      expect(result[0]).to be_a(WeatherDay)
      expect(result[0].date).to be_a(DateTime)
      expect(result[0].day_feels_like_c).to be_a(Float)
      expect(result[0].day_feels_like_f).to be_a(Float)
      expect(result[0].description).to be_a(String)
      expect(result[0].max_c).to be_a(Float)
      expect(result[0].max_f).to be_a(Float)
      expect(result[0].min_c).to be_a(Float)
      expect(result[0].min_f).to be_a(Float)
      expect(result[0].sky_coverage).to be_a(Integer)
    end
  end
end
