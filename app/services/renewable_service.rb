class RenewableService

  def initialize(zipcode)
    @zipcode = zipcode
    @api_key = ENV['api_key']
  end

  def stations
    @stations_response = Faraday.get("http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{@api_key}&location=#{@zipcode}&fuel_type=ELEC&limit=1")
    binding.pry
    @stations = JSON.parse(@stations_response.body)
  end
end