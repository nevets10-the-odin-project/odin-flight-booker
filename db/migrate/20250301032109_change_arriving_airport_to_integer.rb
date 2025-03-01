class ChangeArrivingAirportToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :flights, :arriving_airport, :integer
  end
end
