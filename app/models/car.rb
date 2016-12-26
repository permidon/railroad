class Car < ApplicationRecord
  belongs_to :train

  scope :corridor, -> { where('car_type = ?', 'Corridor car') }
  scope :couchette, -> { where('car_type = ?', 'Couchette car') }

  scope :head, -> { order('number ASC')}
  scope :tail, -> { order('number DESC')}

  before_validation :add_car_number
  validates :number, uniqueness: { scope: :train_id }

  protected

  def add_car_number
    self.number = (Car.where(train_id: self.train_id).maximum('number') || 0).to_i + 1
  end

end
