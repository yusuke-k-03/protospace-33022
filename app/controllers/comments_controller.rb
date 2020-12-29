class CommentsController < ApplicationController
  def create
    if
      @comment = Comment.create(comment_params)
      redirect_to prototype_path(@comment.prototype)
    else
      render :"prototype/show"
    end
    
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
