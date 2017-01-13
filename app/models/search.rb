class Search
  def self.trains(departure_station, arrival_station)
    trains = []
    routes = departure_station.routes & arrival_station.routes
    routes.each do |route|
      if departure_station.position_in(route) < arrival_station.position_in(route)
        route.trains.each { |train| trains << train }
      end
    end
    trains
  end
end