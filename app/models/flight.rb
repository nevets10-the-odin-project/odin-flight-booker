class Flight < ApplicationRecord
  belongs_to :departure_airport, foreign_key: 'departure_airport', class_name: 'Airport'
  belongs_to :arriving_airport, foreign_key: 'arriving_airport', class_name: 'Airport'
end
