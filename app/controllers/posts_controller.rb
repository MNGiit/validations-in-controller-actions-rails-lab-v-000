class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    # @post.update(post_params)
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
    # @post = Post.new(post_params)
    # if @post.valid?
    #   @post.save
    #   @post = Post.find(params[:id])
      
    #   redirect_to post_path(@post)
      # render :show
    # else
    #  render :edit
    #end
    # redirect_to post_path(@post)
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
