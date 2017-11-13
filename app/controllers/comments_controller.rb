class CommentsController < ApplicationController
  
  def create

    @comment = Comment.create(text: comment_params[:text],free_post_id: comment_params[:free_post_id], user_id: current_user.id)
    redirect_to free_post_path(@comment.free_post_id)

  end


  private
  def comment_params
     params.permit(:text, :free_post_id).merge(user_id: current_user.id)
  end
end