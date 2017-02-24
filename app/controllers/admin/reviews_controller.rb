class Admin::ReviewsController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @reviews = Review.order("id DESC")
  end

  def show
    @product = Product.find(params[:id])
  end

  def publish
    @review = Review.find(params[:id])
    @review.publish!
    redirect_to :back
  end

  def hide
    @review = Review.find(params[:id])
    @review.hide!
    redirect_to :back
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :is_hidden)
  end

end
