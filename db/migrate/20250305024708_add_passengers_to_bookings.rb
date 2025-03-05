class AddPassengersToBookings < ActiveRecord::Migration[8.0]
  def change
    add_reference :bookings, :passengers, null: false, foreign_key: true
  end
end
