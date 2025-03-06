class RemovePassengerRefFromBookings < ActiveRecord::Migration[8.0]
  def change
    remove_reference :bookings, :passenger
  end
end
