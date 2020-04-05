class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @spaces = Space.geocoded

    if params[:query1].present? && params[:query2].present?
      from = DateTime.parse(params[:query1])
      to = DateTime.parse(params[:query2])

      @spaces = @spaces.where.not(
      id: Booking.select(:space_id).overlapping(from, to)
      ).geocoded

    end
    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude
      }
    end
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def space_params
    params.require(:space).permit(:address, :city, :postcode, :number_of_people, :daily_price, :description, :photo)
  end
end
