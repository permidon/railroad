class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :route

  def self.position(route, station)
    self.where(route: route, railway_station: station).first.position
  end
end
