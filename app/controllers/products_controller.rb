class ProductsController < ApplicationController
  def index
    @products = Product.where(:is_hidden => false)
    @products_a = Product.where(:category => '1_hour')
    @products_b = Product.where(:category => '1_day')
    @products_c = Product.where(:category => '1_week')
    @products_d = Product.where(:category => '3_month')
    @products_e = Product.where(:category => '1_year')
    @products_f = Product.where(:category => '7_year')
  end

  def show
    @product = Product.find(params[:id])
    @posts = @product.posts.recent.paginate(:page => params[:page], :per_page => 5)
    @reviews = @product.reviews.recent.paginate(:page => params[:page], :per_page => 5)
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "Successful add #{@product.title} to cart"
    else
      flash[:warning] = "Your cart already has this item"
    end
    redirect_to :back
  end
end
