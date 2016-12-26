class SleepingCar < Car
  validates :lower_places, presence: true
  validates :upper_places, :side_upper_places, :side_lower_places, :seat_places, absence: true
end