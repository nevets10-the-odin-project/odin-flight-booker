class FlightsController < ApplicationController
  def index
    @flights = Flight.where(departure_airport: Airport.where(code: params[:departure_airport]))
  end
end
