class ProductsController < ApplicationController
  def index
    @products = Product.where(:is_hidden => false)
    @products_a = Product.where(:category => '1_hour', :is_hidden => false)
    @products_b = Product.where(:category => '1_day', :is_hidden => false)
    @products_c = Product.where(:category => '1_week', :is_hidden => false)
    @products_d = Product.where(:category => '3_month', :is_hidden => false)
    @products_e = Product.where(:category => '1_year', :is_hidden => false)
    @products_f = Product.where(:category => '7_year', :is_hidden => false)
  end

  def show
    @product = Product.find(params[:id])
    # if @product.is_hidden
    #   flash[:warning] = "This product already archieved"
    #   redirect_to root_path
    # end
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
