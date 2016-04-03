class GuideServicesController < ApplicationController
  before_action :find_guide_service, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @guide_services = current_user.guide_services.all
  end

  def show
  end

  def new
    @guide_service = GuideService.new
    @divisions = Division.all
    @districts = District.all
    @thanas = Thana.all
  end

  def edit
  end

  def create
    @guide_service = current_user.guide_services.new(guide_service_params)

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
    @guide_service = current_user.guide_services.find(params[:id])
  end

  def guide_service_params
    params.require(:guide_service).permit(:name, :phone, :email, :thana_id, :district_id,:division_id, :address, :web, :service_area, :service_type, :availability, :user_id)
  end
end
