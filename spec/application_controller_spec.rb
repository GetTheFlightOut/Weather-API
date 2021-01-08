require_relative "spec_helper"

def app
  ApplicationController
end

describe ApplicationController do
  it "responds with the JSON requested" do
    get 'api/v1/weather?lat=35&lon=139'
# binding.pry
    expect(last_response.status).to eq(200)

    expect(last_response).to be_successful
    response = JSON.parse(last_response.body, symbolize_names: true)[:data]

    expect(response).to be_a(Hash)

    expect(response).to have_key(:lat)
    expect(response[:lat]).to be_an(Integer)

    expect(response).to have_key(:lon)
    expect(response[:lon]).to be_a(Integer)

    expect(response).to have_key(:timezone)
    expect(response[:timezone]).to be_a(String)

    expect(response).to have_key(:timezone_offset)
    expect(response[:timezone_offset]).to be_a(Integer)

    expect(response).to have_key(:current)
    expect(response[:current]).to be_a(Hash)
    binding.pry
  end
end
