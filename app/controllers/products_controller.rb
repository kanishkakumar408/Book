class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy, :update]
  def index
  	@products = Product.all
  end

  def create
  	@product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
    
      else
        format.html { render :new }
        
      end
    end
  end
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
 
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully deleted.' }
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
