class ReviewsController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :create]

  def index
    @reviews = Review.all
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])

  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      url = request.referer
      if url.include?("/account")
        redirect_to account_reviews_path, notice: "Update Success"
      else
        redirect_to product_path(@product), notice: "Update Success"
      end
    else
      render :edit
    end
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

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    @review.destroy
    url = request.referer
    if url.include?("/account")
      redirect_to account_reviews_path, alert: "Review deleted!"
    else
      redirect_to product_path(@product), alert: "Review deleted!"
    end

  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end

end
