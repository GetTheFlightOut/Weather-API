require 'spec_helper'

describe WeatherDay, type: :poros do
  before :each do
    @day_weather = {:dt=>1610071200,
      :sunrise=>1610056347,
      :sunset=>1610092098,
      :temp=>{:day=>274.74, :min=>271.63, :max=>275.27, :night=>271.63, :eve=>273.3, :morn=>272.23},
      :feels_like=>{:day=>264.82, :night=>262.84, :eve=>264.01, :morn=>264.1},
      :pressure=>1010,
      :humidity=>64,
      :dew_point=>269.19,
      :wind_speed=>10.53,
      :wind_deg=>261,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :clouds=>0,
      :pop=>0.08,
      :uvi=>2.64}
    @new_day = WeatherDay.new(@day_weather)
  end

  it 'exists' do
    expect(@new_day).to be_a WeatherDay
    expect(@new_day.min_temp).to eq(271.63)
    expect(@new_day.max_temp).to eq(275.27)
    expect(@new_day.description).to eq("clear sky")
  end

  describe 'instance methods' do
    it 'fahrenheit' do
      temp = 271.63
      expect(@new_day.fahrenheit(temp).round(2)).to eq(30.48)
    end

    it 'celsius' do
      temp = 271.63
      expect(@new_day.celsius(temp).round(2)).to eq(-1.52)
    end
  end
end
