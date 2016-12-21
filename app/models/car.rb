class Car < ApplicationRecord
  belongs_to :train

  # Для купе почитал и применил иную запись scope
  def self.corridor
    where(:car_type => 'Corridor car')
  end

  # Но, т.к. мы их не проходили, решил для треннировки сделать свое решение для плацкарта:
  def self.couchette
    self.all.map { |x| x if x.car_type == 'Couchette car' }.compact
  end

  def self.couchup
    up = 0
    couchette.each { |x| up += x.upper_seats if !x.upper_seats.nil? }
    up
  end

  def self.couchlow
    low = 0
    couchette.each { |x| low += x.lower_seats if !x.lower_seats.nil? }
    low
  end

  validates :number, presence: true
end
