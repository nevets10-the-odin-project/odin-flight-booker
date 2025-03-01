class Airport < ApplicationRecord
  has_many :departure_flights, inverse_of: 'departure_airport', class_name: 'Flight'
  has_many :arriving_flights, inverse_of: 'arriving_airport', class_name: 'Flight'
end
