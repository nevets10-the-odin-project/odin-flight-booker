class AddFlightsRefToBookings < ActiveRecord::Migration[8.0]
  def change
    add_reference :bookings, :flights, null: false, foreign_key: true
  end
end
