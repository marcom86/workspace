class SpacesController < ApplicationController
  def index
    @spaces = Space.geocoded

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
      redirect_to spaces_path(@space)
    else
      render :new
    end
  end

  private

  def space_params
    params.require(:space).permit(:address, :city, :postcode, :number_of_people, :daily_price, :description, :photo)
  end
end
