class Flight < ApplicationRecord
  belongs_to :departure_airport, foreign_key: 'departure_airport', class_name: 'Airport'
  belongs_to :arriving_airport, foreign_key: 'arriving_airport', class_name: 'Airport'
  belongs_to :bookings

  def format_flight_info
    "#{departure_airport.code} to #{arriving_airport.code} | Departure time: #{start} | Duration: #{duration} hours"
  end
end
