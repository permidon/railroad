class EconomyCar < Car
  validates :upper_places, :lower_plases, :side_upper_plases, :side_lower_places, presence: true
  validates :seat_places, absence: true
end