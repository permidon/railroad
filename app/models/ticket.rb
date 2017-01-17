class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
  belongs_to :last_station, class_name: 'RailwayStation', foreign_key: :last_station_id

  validates :number, :fullname, :passport, presence: true

  before_validation :set_number

  after_create :send_notification
  after_destroy :send_cancellation

  def route_name
    "#{first_station.title} - #{last_station.title}"
  end

  private

  def set_number
    self.number = "#{rand(99999)}"
  end

  def send_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_cancellation
    TicketsMailer.cancel_ticket(self.user, self).deliver_now
  end
end
