class Car < ApplicationRecord
  belongs_to :train

  scope :corridor, -> { where('car_type = ?', 'Corridor car') }
  scope :couchette, -> { where('car_type = ?', 'Couchette car') }

  validates :number, presence: true
end
