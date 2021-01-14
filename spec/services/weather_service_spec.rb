require 'spec_helper'
require 'json'
require 'rspec'

describe '.class_methods' do
  it 'weather_search method returns parsed response based on params' do
    params = {
      lat: "35",
      lon: "139"
    }
    search = WeatherService.weather_search(params)

    expect(search).to be_a(Hash)
    expect(search[:daily]).to be_an(Array)
    expect(search[:daily].length).to eq(8)
    expect(search[:daily][0]).to be_a(Hash)
    expect(search[:daily][0][:temp]).to be_a(Hash)
    expect(search[:daily][0][:temp][:min]).to be_a(Float)
    expect(search[:daily][0][:temp][:max]).to be_a(Float)
    expect(search[:daily][0][:feels_like][:day]).to be_a(Float)
    expect(search[:daily][0][:weather][0][:description]).to be_a(String)
    expect(search[:daily][0][:clouds]).to be_an(Integer)
  end
end
