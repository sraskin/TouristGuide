class PackegesController < ApplicationController

  def index
    @guide_service = GuideService.find(params[:guide_service_id])
    @packeges = @guide_service.packeges
  end

  def show
  end

  def new
    @guide_service = GuideService.find(params[:guide_service_id])
    @packege = @guide_service.packeges.new
  end

  def create
    @packege = Packege.new(packege_params)
    if @packege.save
      flash[:notice] = 'Successfully saved.'
      redirect_to guide_service_packeges_path
    else
      flash[:notice] = 'cAN NOT saved.'
      redirect_to guide_service_packeges_path
    end
  end

  private

    def packege_params
      params.require(:packege).permit(:guide_service_id,:name, :details, :price)
    end
end

