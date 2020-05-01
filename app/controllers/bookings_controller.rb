class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
    @query1 = session[:query1]
    @query2 = session[:query2]
  end

  def create
    @space = Space.find(params[:space_id])
    @booking  = Booking.new(booking_params)



    if @booking.save
       session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @space.address,
        images: [@space.photo],
        amount: @space.price_cents * (1 + (@booking.check_out - @booking.check_in).to_i),
        currency: 'gbp',
        quantity: 1
      }],
      # success_url: "http://localhost:3000/bookings/#{booking.id}/payments/success?session_id={CHECKOUT_SESSION_ID}",
      success_url: success_booking_payments_url(@booking),
      cancel_url: new_booking_payment_url(@booking) #delete booking
      )
      @booking.update_attribute(:checkout_session_id, session.id)
      redirect_to new_booking_payment_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = current_user.bookings.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @Booking.destroy

    redirect_to root
  end


  private

  def booking_params

    params.require(:booking).permit(:check_in, :check_out).merge(state: 'pending', amount: @space.price, user: current_user, space: @space)
  end
end
