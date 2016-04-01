class LocalBusinessesController < ApplicationController
  before_action :find_local_business, only: [:show, :edit, :update, :destroy]

  def index
    @local_businesses = LocalBusiness.all
  end

  def show
  end

  def new
    @local_business = LocalBusiness.new
  end

  def edit
  end

  def create
    @local_business = LocalBusiness.new(local_business_params)

    if @local_business.save
      redirect_to @local_business, notice: "success"
    else
      render 'new'
    end
  end

  def update
    if @local_business.update(local_business_params)
      redirect_to @local_business, notice: "success"
    else
      render 'edit'
    end
  end

  def destroy
    @local_business.destroy
    redirect_to local_business_path
  end

  private
  def find_local_business
    @local_business = LocalBusiness.find(params[:id])
  end

  def local_business_params
    params.require(:local_business).permit(:location_id, :product_name, :store_name, :product_type, :product_price, :product_details, :product_image, :store_image, :web_address, :phone, :email, :thana, :district, :user_id)
  end
end
