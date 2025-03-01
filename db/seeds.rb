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
  ['DEN', 'Denver International Airport'],
  ['PEK', 'Beijing Capital International Airport'],
  ['PKX', 'Beijing Daxing International Airport'],
  ['LHR', 'London Heathrow Airport'],
  ['HND', 'Tokyo International Airport'],
  ['ORD', "Chicago O'Hare International Airport"],
  ['LAX', 'Los Angeles International Airport'],
  ['CDG', 'Charles de Gaulle International Airport'],
  ['CGK', 'Soekarno-Hatta International Airport'],
  ['DXB', 'Dubai International Airport'],
  ['FRA', 'Frankfurt Airport'],
  ['HKG', 'Hong Kong International Airport'],
  ['BKK', 'Suvarnabhumi Airport'],
  ['SIN', 'Singapore Changi Airport'],
  ['AMS', 'Amsterdam Airport Schiphol'],
  ['JFK', 'John F. Kennedy International Airport'],
  ['CAN', 'Guangzhou Baiyun International Airport'],
  ['MAD', 'Madrid-Barajas Airport'],
  ['IST', 'Istanbul Airport'],
  ['PVG', 'Shanghai Pudong International Airport'],
  ['SFO', 'San Francisco International Airport'],
  ['LAS', 'Harry Reid International Airport'],
  ['CLT', 'Charlotte/Douglas International Airport'],
  ['PHX', 'Sky Harbor International Airport'],
  ['IAH', 'George Bush Intercontinental Airport'],
  ['KUL', 'Kuala Lumpur International Airport'],
  ['MIA', 'Miami International Airport'],
  ['ICN', 'Incheon International Airport'],
  ['MUC', 'Munich Airport']
].each do |airport|
  Airport.find_or_create_by!(code: airport[0], name: airport[1])
end

[
  [Time.new(2025, 1, 1, 8, 0, 0, 0), 3, 1, 2],
  [Time.new(2025, 2, 28, 12, 0, 0, 0), 31, 27, 12],
  [Time.new(2025, 2, 18, 16, 0, 0, 0), 9, 8, 8],
  [Time.new(2025, 3, 5, 2, 0, 0, 0), 4, 7, 4],
  [Time.new(2025, 5, 16, 18, 0, 0, 0), 2, 9, 6],
  [Time.new(2025, 7, 30, 23, 0, 0, 0), 30, 10, 7],
  [Time.new(2025, 9, 10, 4, 0, 0, 0), 5, 6, 3],
  [Time.new(2025, 6, 12, 6, 0, 0, 0), 8, 2, 9],
  [Time.new(2025, 8, 3, 6, 0, 0, 0), 2, 9, 10],
  [Time.new(2025, 2, 8, 6, 0, 0, 0), 23, 18, 6],
  [Time.new(2025, 9, 11, 9, 0, 0, 0), 28, 21, 5],
  [Time.new(2025, 10, 12, 13, 0, 0, 0), 29, 12, 4],
  [Time.new(2025, 12, 19, 12, 0, 0, 0), 17, 13, 3],
  [Time.new(2025, 6, 23, 7, 0, 0, 0), 19, 22, 10],
  [Time.new(2025, 4, 10, 10, 0, 0, 0), 11, 4, 8],
  [Time.new(2025, 2, 24, 20, 0, 0, 0), 4, 8, 9],
  [Time.new(2025, 7, 4, 5, 0, 0, 0), 7, 11, 12],
  [Time.new(2025, 5, 8, 9, 0, 0, 0), 13, 21, 4],
  [Time.new(2025, 6, 9, 5, 0, 0, 0), 16, 19, 6],
  [Time.new(2025, 3, 17, 4, 0, 0, 0), 21, 24, 5]
].each do |flight|
  Flight.find_or_create_by!(start: flight[0], departure_airport: Airport.find(flight[1]), arriving_airport: Airport.find(flight[2]),
                            duration: flight[3])
end
