class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params['flight_id'])
    @booking = Booking.new
    params['passenger_count'].to_i.times do
      @booking.passenger.build
    end
  end

  def create
    p "THIS IS PASSENGER: #{params[:passenger]}"
    @booking = Booking.new(bookings_params)
  end

  private

  def bookings_params
    params.expect(:flight_id, passenger: %i[name email])
  end
end
