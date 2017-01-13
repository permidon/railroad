class Train < ApplicationRecord
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route
  has_many :tickets
  has_many :cars

  validates :number, presence: true

  def cars_sorting
    cars_order ? cars.head : cars.tail
  end

  def places_count(car_type, place_type)
    self.cars.where(type: car_type).sum(place_type)
  end
end
