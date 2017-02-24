class Admin::ProductsController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products = Product.all
    @products_a = Product.where(:category => '1_hour')
    @products_b = Product.where(:category => '1_day')
    @products_c = Product.where(:category => '1_week')
    @products_d = Product.where(:category => '3_month')
    @products_e = Product.where(:category => '1_year')
    @products_f = Product.where(:category => '7_year')
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end


private

  def product_params
    params.require(:product).permit(:title, :description, :category, :quantity, :price, :image, :is_hidden)
  end

end
