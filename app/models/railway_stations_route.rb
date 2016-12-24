class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :route

  def self.posit(route, station)
    self.where('route_id = ? and railway_station_id = ?', route.id, station.id).first.position
  end
end
