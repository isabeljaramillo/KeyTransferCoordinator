class TripsController < ApplicationController

  def index
    @trip.leg.each do |leg|
      leg.origin
      leg.destination
      leg.order #Put out 1, 2, 3
  end
end
