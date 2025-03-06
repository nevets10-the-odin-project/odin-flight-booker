class RemoveFlightsRefFromBookings < ActiveRecord::Migration[8.0]
  def change
    remove_reference :bookings, :flights
  end
end
