class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @spaces = Space.geocoded
    session[:query1] = params[:query1]
    session[:query2] = params[:query2]
    session[:location] = params[:location]

    if params[:location].present?
      @spaces = @spaces.where(city: params[:location])
    end

    if params[:query1].present? && params[:query2].present?
      from = DateTime.parse(params[:query1])
      to = DateTime.parse(params[:query2])



      @spaces = @spaces.where.not(
      id: Booking.where(state: 'paid').select(:space_id).overlapping(from, to)
      ).geocoded

    end

    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
    end
  end

  def show
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
