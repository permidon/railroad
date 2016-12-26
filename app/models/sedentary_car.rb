class SedentaryCar < Car
  validates :seat_places, presence: true
  validates :upper_places, :lower_places, :side_upper_places, :side_lower_places, absence: true
end