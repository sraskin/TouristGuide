class ProductsController < ApplicationController

  def index
    @local_business = LocalBusiness.find(params[:local_business_id])
    @products = @local_business.products
  end

  def show
  end

  def new
    @local_business = LocalBusiness.find(params[:local_business_id])
    @product = @local_business.products.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Successfully saved.'
      redirect_to local_business_products_path
    else
      flash[:notice] = 'cAN NOT saved.'
      redirect_to local_business_products_path
    end
  end

  def edit
  end

  def update
  end

  private

  def product_params
    params.require(:product).permit!
  end
end

