class BookingsController < ApplicationController

  def create
    @land = Land.find(params[:id])
    @booking = Booking.new(params_booking)
  end

  def new
    @booking = Booking.new
  end

  private

  def params_booking
    params.require(:booking).permit(:land_id, :farmer_id)
  end
end
