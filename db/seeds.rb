# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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
