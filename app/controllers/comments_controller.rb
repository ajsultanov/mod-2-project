class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    #@comment.user = current_user
    @picture = Picture.find(params[:comment][:picture_id])
    #@comment.picture = @picture
    redirect_to picture_path(@picture)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :picture_id)
  end
end
