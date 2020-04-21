class PaymentsController < ApplicationController
  def new
    # @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
    @booking = current_user.bookings.find(params[:booking_id])

    @days = 1 + (@booking.check_out - @booking.check_in).to_i
    @service_fee = @booking.space.price * @days * 0.15
    @total_price = (@booking.space.price * @days) + @service_fee
  end

  def success
    @booking = current_user.bookings.find(params[:booking_id])
    @days = 1 + (@booking.check_out - @booking.check_in).to_i
    @service_fee = @booking.space.price * @days * 0.15
    @total_price = (@booking.space.price * @days) + @service_fee
  end
end
