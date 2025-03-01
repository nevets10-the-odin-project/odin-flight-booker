class ChangeDepartureAirportNullDefault < ActiveRecord::Migration[8.0]
  def change
    change_column_null :flights, :departure_airport, false
  end
end
