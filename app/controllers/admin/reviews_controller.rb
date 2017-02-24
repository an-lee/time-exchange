class Admin::ReviewsController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @reviews = Review.order("id DESC")
  end
  
end
