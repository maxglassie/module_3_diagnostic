require 'rails_helper'

RSpec.describe "station takes service response and makes an object", :vcr do
  it "creates PORO and can call .station_counts" do
    response = RenewableService.new("80203").stations
    station = Station.new(response["fuel_stations"].first)

    expect(station.station_name).to eq("UDR")
  end
end