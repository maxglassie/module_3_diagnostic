require 'rails_helper'

RSpec.describe "station takes service response and makes an object", :vcr do
  it "creates PORO and can call .station_counts" do
    response = RenewableService.new("80203").stations
    station = Station.new(response)

    expect(station.station_counts["total"]).to eq(120)
  end
end