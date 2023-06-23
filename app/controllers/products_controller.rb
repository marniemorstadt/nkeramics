class ProductsController < ApplicationController
  before_action :require_authorized_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params

    if @product.save
      redirect_to product_path(@product)
    else
      raise
      render :new
    end
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to product_path(product)
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :size,  photos: [])
  end

  def require_authorized_user
    unless current_user&.email == 'kerpnern@gmail.com'
      flash[:alert] = 'You are not authorized to perform this action.'
      redirect_to root_path
    end
  end
end
