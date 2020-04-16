class BookmarksController < ApplicationController

  def create
    if Bookmark.create(user_id: current_user.id,post_id: params[:post_id])
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    if bookmark = Bookmark.find_by(user_id: current_user.id,post_id:params[:id])
      bookmark.delete
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

end
