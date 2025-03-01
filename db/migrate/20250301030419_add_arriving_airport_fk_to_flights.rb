class AddArrivingAirportFkToFlights < ActiveRecord::Migration[8.0]
  def change
    add_column :flights, :arriving_airport, :bigint
    add_foreign_key :flights, :airports, column: :arriving_airport
  end
end
