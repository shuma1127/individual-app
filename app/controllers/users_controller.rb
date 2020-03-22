class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @posts = user.posts.page(params[:page]).per(8).order("created_at DESC")
    # @posts = user.posts.page(params[:page]).per(8).order("created_at DESC")
  end
end
