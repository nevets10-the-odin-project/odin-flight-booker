class ChangeDepatureAirportToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :flights, :departure_airport, :integer
  end
end
