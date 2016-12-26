class EconomyCar < Car
  validates :upper_places, :lower_places, :side_upper_places, :side_lower_places, presence: true
  validates :seat_places, absence: true
end