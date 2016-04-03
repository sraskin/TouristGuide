class SpotsController < ApplicationController

  def index
    @tourist_spot = TouristSpot.find(params[:tourist_spot_id])
    @spots = @tourist_spot.spots
  end

  def show
  end

  def new
    @tourist_spot = TouristSpot.find(params[:tourist_spot_id])
    @spot = @tourist_spot.spots.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      flash[:notice] = 'Successfully saved.'
      redirect_to tourist_spot_spots_path
    else
      flash[:notice] = 'cAN NOT saved.'
      redirect_to tourist_spot_spots_path
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:tourist_spot_id,:name, :attraction, :details, :address, :travel_instruction, :image, :hotel)
  end
end

