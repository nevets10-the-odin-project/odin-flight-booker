class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params['flight_id'])
    @passengers = []
    params['passenger_count'].to_i.times do
      @passengers << Passenger.new
    end
  end

  def create
    @booking = Booking.new(bookings_params)
  end

  private

  def bookings_params
    params.expect(:flight_id, passenger: [[id: %i[name email]]])
  end
end
