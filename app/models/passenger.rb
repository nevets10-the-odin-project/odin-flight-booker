class Passenger < ApplicationRecord
  belongs_to :flights
  has_many :bookings
end
