class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params['flight_id'])
    @booking = Booking.new
    params['passenger_count'].to_i.times do
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(bookings_params)
  end

  private

  def bookings_params
    params.expect(booking: [:flight_id, { passengers: %i[name email] }])
  end
end
