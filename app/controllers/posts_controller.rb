class PostsController < ApplicationController

 def index
   @posts = Post.all
   params.permit(:featured_image, :title, :content)
 end

 def new
   @post = Post.new
 end

 def create
   @post = Post.create!(post_params)
  #  JGZ - dont think this is necessary below
   @post.save
   redirect_to @post
 end

 def show
  #  JGZ - notice that you're repeating this same line a bunch of times! I'd ncourage you
  # to investigate how to set this "before" any of these methods
   @post = Post.find(params[:id])
   @comments = @post.comments
 end



 def edit
   @post = Post.find(params[:id])
 end

 def update
   @post = Post.find(params[:id])
   @post.update(post_params)
   redirect_to @post
 end

 def destroy
   @post = Post.find(params[:id])
   @post.destroy
  #  JGZ - would this work? you are trying to redirect to all posts, but then you're passing in a specific post..
   redirect_to posts_path(@post)
 end

 private
 def post_params
   params.require(:post). permit(:title, :content, :featured_image, :featured_video, :category)
 end
end
