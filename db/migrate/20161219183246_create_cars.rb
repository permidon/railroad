class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :number
      t.string :car_type
      t.integer :upper_seats
      t.integer :lower_seats

      t.timestamps
    end
  end
end
