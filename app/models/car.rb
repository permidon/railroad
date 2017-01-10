class Car < ApplicationRecord
  belongs_to :train

  before_validation :add_car_number
  validates :number, uniqueness: { scope: :train_id }

  scope :head, -> { order('number ASC')}
  scope :tail, -> { order('number DESC')}

  protected

  def add_car_number
    self.number = (Car.where(train_id: self.train_id).maximum('number') || 0).to_i + 1
  end

end
