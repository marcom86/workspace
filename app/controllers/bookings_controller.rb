class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @space = Space.find(params[:space_id])
    booking  = Booking.create!(booking_params)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @space.address,
        images: [@space.photo],
        amount: @space.price_cents,
        currency: 'gbp',
        quantity: 1 + (booking.check_out - booking.check_in).to_i
      }],
      success_url: booking_url(booking),
      cancel_url: booking_url(booking)
      )

    booking.update_attribute(:checkout_session_id, session.id)
    redirect_to new_booking_payment_path(booking)
  end

  def show
    @booking = current_user.bookings.find(params[:id])
  end


  private

  def booking_params

    params.require(:booking).permit(:check_in, :check_out).merge(state: 'pending', amount: @space.price, user: current_user, space: @space)
  end
end
