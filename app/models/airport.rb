class Airport < ApplicationRecord
  has_many :departure_flights, inverse_of: 'departure_airport'
  has_many :arriving_flights, inverse_of: 'arriving_airport'
end
