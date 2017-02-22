class ReviewsController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :create]

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user

    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end


  private

  def review_params
    params.require(:review).permit(:title)
  end

end
