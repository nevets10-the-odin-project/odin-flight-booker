class FlightsController < ApplicationController
  def index
    @departure_time = Date.new(params['[departure_time(1i)]'].to_i, params['[departure_time(2i)]'].to_i,
                               params['[departure_time(3i)]'].to_i)

    puts @departure_time
    @flights = Flight.where(departure_airport: Airport.where(code: params[:departure_airport]))
                     .where(arriving_airport: Airport.where(code: params[:arriving_airport]))
                     .where(start: @departure_time)
  end
end
