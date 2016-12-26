class Train < ApplicationRecord
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :route
  has_many :tickets
  has_many :cars

  def cars_sorting
    cars_order ? cars.head : cars.tail
  end

  validates :number, presence: true
end
