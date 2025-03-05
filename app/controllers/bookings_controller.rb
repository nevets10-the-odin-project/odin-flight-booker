class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params['flight_id'])
    @passengers = []
    params['passenger_count'].to_i.times do
      @passengers << Passenger.new
    end
  end

  def create
  end
end
