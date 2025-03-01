class ChangeArrivingAirportNullDefault < ActiveRecord::Migration[8.0]
  def change
    change_column_null :flights, :arriving_airport, false
  end
end
