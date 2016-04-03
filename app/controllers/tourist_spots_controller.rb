class TouristSpotsController < ApplicationController
  before_action :find_tourist_spot, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @tourist_spots = current_user.tourist_spots.all
  end

  def show
  end

  def new
    @tourist_spot = TouristSpot.new
    @divisions = Division.all
    @districts = District.all
    @thanas = Thana.all
  end

  def edit
  end

  def create
    @tourist_spot = current_user.tourist_spots.new(tourist_spot_params)

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
  @tourist_spot =  current_user.tourist_spots.find(params[:id])
end

def tourist_spot_params
  params.require(:tourist_spot).permit(:name, :thana_id, :district_id,:division_id, :place_image, :place_details, :location_id, :user_id)
end
