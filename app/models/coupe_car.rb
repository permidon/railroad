class CoupeCar < Car
  validates :upper_places, :lower_places, presence: true
  validates :side_upper_places, :side_lower_places, :seat_places, absence: true
end