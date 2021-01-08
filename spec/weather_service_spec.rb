require_relative "spec_helper"
require 'json'

def app
  ApplicationController
end

describe "I can connect and recieve data from the weather api" do
  it 'I get back JSON data' do
    params = {
      :lat => '51',
      :lon => '10', 
      :units => 'imperial'
    }

    get 'api/v1/weather', params
    expect(last_response.status).to eq(200)
    expect(last_response.body).to be_a(String)
    response = JSON.parse(last_response.body, symbolize_names: true)
    expect(response).to be_an(Hash)
    expect(response[:data]).to be_an(Hash)
    expect(response[:data][:lat]).to be_an(Integer)
    expect(response[:data][:lat]).to eq(51)
    expect(response[:data][:lon]).to be_an(Integer)
    expect(response[:data][:lon]).to eq(10)
  end
end