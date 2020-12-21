class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
  	@products = Product.all
  end

  def create
  	@product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@product = Product.new
  end

  def show
  	
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:Title, :description, :price, :image_url, :color)
    end
end
# request types
# single routes