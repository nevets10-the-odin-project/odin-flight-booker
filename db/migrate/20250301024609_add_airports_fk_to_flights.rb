class AddAirportsFkToFlights < ActiveRecord::Migration[8.0]
  def change
    add_column :flights, :departure_airport, :bigint
    add_foreign_key :flights, :airports, column: :departure_airport
  end
end
