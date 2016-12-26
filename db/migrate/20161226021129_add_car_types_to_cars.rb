class AddCarTypesToCars < ActiveRecord::Migration[5.0]
  def change
    rename_column :cars, :car_type, :type
    rename_column :cars, :upper_seats, :upper_places
    rename_column :cars, :lower_seats, :lower_places
    add_column :cars, :side_upper_places, :integer
    add_column :cars, :side_lower_places, :integer
    add_column :cars, :seat_places, :string
  end
end