class StationController < ApplicationController
  def index
    @stations = Search.new(params["zipcode"])
  end
end