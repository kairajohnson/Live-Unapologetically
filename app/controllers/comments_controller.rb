class CommentsController < ApplicationController

 def new
   @post = Post.find(params[:post_id])
   @comment = Comment.new
 end

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)
  @comment.save
  redirect_to post_path(@post)
end

def edit
 @post = Post.find(params[:post_id])
 @comment = Comment.find(params[:id])
end


def update
  @post = Post.find(params [:post_id])
  @comment = Comment.find(params[:id])
  redirect_to post_path(@post)
end

def destroy
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to post_path(@post)
end

private
def comment_params
  params.require(:comment).permit(:user_name, :user_email, :user_comment)
end

end
