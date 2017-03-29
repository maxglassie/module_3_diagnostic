class RenewableService

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def stations
    binding.pry
    @stations = Faraday.get(http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=4i5DPYV18eY4Tjke3vHDV5x61WN6hmpgeWZBrup1&location=80203&fuel_type=ELEC&limit=1)
  end
end