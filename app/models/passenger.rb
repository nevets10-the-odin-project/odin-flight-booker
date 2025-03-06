class Passenger < ApplicationRecord
  belongs_to :bookings, inverse_of: :passenger
end
