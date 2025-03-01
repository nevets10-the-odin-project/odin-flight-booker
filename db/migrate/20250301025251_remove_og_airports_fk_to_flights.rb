class RemoveOgAirportsFkToFlights < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :flights, :airports, column: :airport_id
  end
end
