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

    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
    @passengers = @booking.passengers
  end

  private

  def bookings_params
    # params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
    params.expect(booking: [:flight_id, { passengers_attributes: [%i[name email]] }])
  end
end
