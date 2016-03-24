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
   @post.save
   redirect_to @post
 end

 def show
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
   redirect_to posts_path(@post)
 end

 private
 def post_params
   params.require(:post). permit(:title, :content, :featured_image, :featured_video, :category)
 end
end
