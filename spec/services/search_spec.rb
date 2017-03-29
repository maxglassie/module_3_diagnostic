require 'rails_helper'

RSpec.describe "search returns an array of station objects ", :vcr do
  it "returns array of station objects" do
    search = Search.new("80203")
    station = search.stations.first

    expect(station.station_name).to eq("UDR")
  end
end