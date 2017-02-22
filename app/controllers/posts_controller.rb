class PostsController < ApplicationController

  before_filter :authenticate_user!, :only => [:new, :create]

  def new
    @product = Product.find(params[:product_id])
    @post = Post.new
  end

  def edit
    @product = Product.find(params[:product_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to account_posts_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def create
    @product = Product.find(params[:product_id])
    @post = Post.new(post_params)
    @post.product = @product
    @post.user = current_user

    if @post.save
      redirect_to product_path(@product)
      # 如何跳转到评论页面？
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to account_posts_path, alert: "Post deleted!"
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

end
