class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @lair = Lair.find(params[:lair_id])
  end

  def create
    @booking = Booking.create(booking_params)
    @lair = Lair.find(params[:lair_id])

  end

end
