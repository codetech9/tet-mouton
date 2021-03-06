class BookingsController < ApplicationController

  def new
    @land = Land.find(params[:land_id])
    @booking = Booking.new
  end

  def create
    @land = Land.find(params[:land_id])
    @user = current_user
    @booking = Booking.new(params_booking)
    @booking.user = @user
    @booking.land = @land
  end


  private

  def params_booking
    params.require(:booking).permit(:land_id, :farmer_id)
  end
end
