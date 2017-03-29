require 'rails_helper'

RSpec.describe "query service hits API", :vcr do
  it "hits the station API with zipcode and electric and returns JSON" do
    response = RenewableService.new("80203").stations

    expect(response["station_counts"]["total"]).to eq(120)
  end
end