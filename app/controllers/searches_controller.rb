class SearchesController < ApplicationController
  def show
    @railway_stations = RailwayStation.all
  end

  def create
    @departure_station = RailwayStation.find(params[:departure_station_id])
    @arrival_station = RailwayStation.find(params[:arrival_station_id])
    @result = Search.trains(@departure_station, @arrival_station)

    render :result
  end
end