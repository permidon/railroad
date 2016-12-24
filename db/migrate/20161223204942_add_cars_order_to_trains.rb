class AddCarsOrderToTrains < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :cars_order, :boolean
  end
end
