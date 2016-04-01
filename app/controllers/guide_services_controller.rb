class GuideServicesController < ApplicationController
  before_action :find_guide_service, only: [:show, :edit, :update, :destroy]

  def index
    @guide_services = GuideService.all
  end

  def show
  end

  def new
    @guide_service = GuideService.new
  end

  def edit
  end

  def create
    @guide_service = GuideService.new(guide_service_params)

    if @guide_service.save
      redirect_to @guide_service, notice: "Success"
    else
      render 'new'
    end
  end

  def update
    if @guide_service.update(guide_service_params)
      redirect_to @guide_service
    else
      render 'edit'
    end
  end

  def destroy
    @guide_service.destroy
    redirect_to guide_service_path
  end

  private
  def find_guide_service
    @guide_service = GuideService.find(params[:id])
  end

  def guide_service_params
    params.require(:guide_service).permit(:location_id, :name, :phone, :email, :thana, :district, :address, :web, :service_area, :service_type, :availability, :user_id)
  end
end
