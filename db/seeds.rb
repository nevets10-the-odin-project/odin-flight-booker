# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

ActiveRecord::Base.connection.reset_sequence!('airports', 'id', 1)
ActiveRecord::Base.connection.reset_sequence!('flights', 'id', 1)

[
  ['ATL', 'Hartsfield-Jackson Atlanta International Airport'],
  ['DFW', 'Dallas-Fort Worth International Airport'],
  ['DEN', 'Denver International Airport']
].each do |airport|
  Airport.find_or_create_by!(code: airport[0], name: airport[1])
end

[
  [Time.new(2025, 4, 1, 8, 0, 0, 0), 1, 2, 2],
  [Time.new(2025, 4, 1, 12, 0, 0, 0), 2, 1, 12],
  [Time.new(2025, 4, 1, 16, 0, 0, 0), 3, 2, 8],
  [Time.new(2025, 4, 1, 2, 0, 0, 0), 1, 3, 4],
  [Time.new(2025, 4, 1, 18, 0, 0, 0), 2, 3, 6],
  [Time.new(2025, 4, 1, 23, 0, 0, 0), 3, 1, 7],
  [Time.new(2025, 4, 1, 4, 0, 0, 0), 1, 2, 3],
  [Time.new(2025, 4, 1, 6, 0, 0, 0), 2, 1, 9],
  [Time.new(2025, 4, 1, 6, 0, 0, 0), 3, 2, 10],
  [Time.new(2025, 4, 1, 6, 0, 0, 0), 1, 3, 6],
  [Time.new(2025, 4, 1, 9, 0, 0, 0), 2, 3, 5],
  [Time.new(2025, 4, 1, 13, 0, 0, 0), 3, 1, 4],
  [Time.new(2025, 4, 1, 12, 0, 0, 0), 1, 2, 3],
  [Time.new(2025, 4, 1, 7, 0, 0, 0), 2, 1, 10],
  [Time.new(2025, 4, 1, 10, 0, 0, 0), 3, 2, 8],
  [Time.new(2025, 4, 1, 20, 0, 0, 0), 1, 3, 9],
  [Time.new(2025, 4, 1, 5, 0, 0, 0), 2, 3, 12],
  [Time.new(2025, 4, 1, 9, 0, 0, 0), 3, 1, 4],
  [Time.new(2025, 4, 1, 5, 0, 0, 0), 1, 2, 6],
  [Time.new(2025, 4, 1, 4, 0, 0, 0), 2, 1, 5]
].each do |flight|
  Flight.find_or_create_by!(start: flight[0], departure_airport: Airport.find(flight[1]), arriving_airport: Airport.find(flight[2]),
                            duration: flight[3])
end
