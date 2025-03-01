class DeleteArrivingAirportsFromFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :arriving_airport, :bigint
  end
end
