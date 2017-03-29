class Search

  def initialize(zipcode)
    @zipcode = zipcode
    @renewable_service = RenewableService.new(@zipcode)
  end

  def stations
    @renewable_service.stations["fuel_stations"].each do |station|
      Station.new(station)
    end
  end
end