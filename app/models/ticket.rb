class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'RailwayStation', foreign_key: :last_station_id

  validates :number, :fullname, :passport, presence: true

  before_validation :set_number

  private

  def set_number
    self.number = "#{rand(99999)}"
  end
end
