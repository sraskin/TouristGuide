class TouristSpotsController < ApplicationController
  before_action :find_tourist_spot, only: [:show, :edit, :update, :destroy]

  def index
    @tourist_spots = TouristSpot.all
  end

  def show
  end

  def new
    @tourist_spot = TouristSpot.new
  end

  def edit
  end

  def create
    @tourist_spot = TouristSpot.new(tourist_spot_params)

    if @tourist_spot.save
      redirect_to @tourist_spot
    else
      render 'new'
    end

  end

  def update

    if @tourist_spot.update(tourist_spot_params)
      redirect_to @tourist_spot
    else
      render 'edit'
    end

  end

  def destroy
    @tourist_spot.destroy
    redirect_to tourist_spot_path
  end
end

private
def find_tourist_spot
  @tourist_spot = TouristSpot.find(params[:id])
end

def tourist_spot_params
  params.require(:tourist_spot).permit(:name, :thana, :district, :place_image, :place_details, :location_id, :user_id)
end
