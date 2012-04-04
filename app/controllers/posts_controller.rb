class PostsController < ApplicationController
  # skip_before_filter :login_user!, only: [:index, :show]
  
  def index
    @posts = Posts.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to posts_url
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to posts_url, notice: 'Success! We updated your post!'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
