class Admin::ReviewsController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @reviews = Review.order("id DESC")
  end

  def show
    @product = Product.find(params[:id])
    # @product_lists = @order.product_lists
  end

end
