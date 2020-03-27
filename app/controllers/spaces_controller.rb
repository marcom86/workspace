class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.save!
    redirect_to spaces_path(@space)
  end

  private

  def space_params
    params.require(:space).permit(:address, :city, :postcode, :number_of_people, :daily_price, :description)
  end
end
