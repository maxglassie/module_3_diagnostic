require 'rails_helper'

RSpec.describe "query service hits API" do
  it "hits the station API with zipcode and electric and returns JSON" do
    #creates a new renewable_service
    #and passes zipcode as params
    #it returns an open struct object
    #and when queried that open struct object returns
    #stations.elec["total"]
    #returns 120
    
    response = JSON.parse(RenewableService.new(80203))
  end
end