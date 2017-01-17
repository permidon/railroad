class AddIndexesToTables < ActiveRecord::Migration[5.0]
  def change
    add_index :cars, [:id, :type]
    add_index :railway_stations_routes, :route_id
    add_index :railway_stations_routes, :railway_station_id
    add_index :railway_stations_routes, :position
    add_index :railway_stations, :title
    add_index :routes, :title
    add_index :trains, :number
    add_index :cars, :number
    add_index :tickets, :number
  end
end
