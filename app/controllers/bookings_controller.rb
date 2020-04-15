class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @space = Space.find(params[:space_id])
    booking  = Booking.create!(booking_params)

    # booking.update(
      #   state: 'pending',
      #   amount: space.price,
      #   user: current_user,
      #   space: space
      #   )

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

  # def create
  #   @booking = Booking.new(booking_params)
  #   @user = current_user
  #   @booking.user = @user
  #   @space = Space.find(params[:space_id])
  #   @booking.space = @space
  #   if @booking.save
  #     redirect_to space_path(@space)
  #   else
  #     render 'spaces/show'
  #   end
  # end

  def my_bookings
    @my_bookings = current_user.bookings
  end

  private

  def booking_params

    params.require(:booking).permit(:check_in, :check_out).merge(state: 'pending', amount: @space.price, user: current_user, space: @space)
  end
end
