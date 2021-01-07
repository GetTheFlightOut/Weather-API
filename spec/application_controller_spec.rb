require_relative "spec_helper"

def app
  ApplicationController
end

describe ApplicationController do
  it "responds with the JSON requested" do
    get '/'
    expect(last_response.status).to eq(200)

    response = JSON.parse(last_response.body)["data"]

    expect(response).to be_a(Hash)
  end
end
