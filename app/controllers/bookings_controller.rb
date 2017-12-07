class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @guide = Guide.find(params[:guide_id])
    @booking = Booking.new
  end

  def create
    # guides/45/bookings
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.guide = Guide.find(params[:guide_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
