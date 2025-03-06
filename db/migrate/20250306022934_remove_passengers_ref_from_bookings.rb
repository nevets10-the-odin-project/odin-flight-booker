class RemovePassengersRefFromBookings < ActiveRecord::Migration[8.0]
  def change
    remove_reference :bookings, :passengers
  end
end
