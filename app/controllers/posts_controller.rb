class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @tweet = Post.new
  end

  def create
    Post.create(posts_params)
  end

  private
  def tweet_params
    params.permit(:name, :image, :title)
  end

end
