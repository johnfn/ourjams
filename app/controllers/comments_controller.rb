class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params[:comment])
    if @comment.save
      flash[:success] = "Comment added"
    else
      flash[:failure] = "Failed to add comment, for some reason."
    end

    redirect_to @comment.entry
  end
end
