class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    @space = Space.find(params[:space_id])
    @booking.space = @space
    if @booking.save
      redirect_to space_path(@space)
    else
      render 'spaces/show'
    end
  end

  def my_reservations
    @user = current_user
    @bookings = Booking.where(user_id: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
