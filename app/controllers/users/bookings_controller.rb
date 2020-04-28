class Users::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings

    if params[:sort].present?
      @bookings = current_user.bookings.order(created_at: params[:sort])
    end
  end
end
