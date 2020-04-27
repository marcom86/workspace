class Users::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.order(created_at: params[:sort])
  end
end
