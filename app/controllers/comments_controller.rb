class CommentsController < ApplicationController
  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end

  def create
  	@post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to @post
  end

  def destroy
    @post = Post.find params[:post_id]
    @comment = @post.comments.find params[:id]
    @comment.destroy
    redirect_to @post
  end

end
