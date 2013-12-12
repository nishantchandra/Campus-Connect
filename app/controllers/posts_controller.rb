class PostsController < ApplicationController
  def index
    @college = College.find(params[:college_id])
    @posts = []
    @posts = Post.find_all_by_college_id(params[:college_id])
  end

  def show
    @post = Post.find(params[:id])
    @comments = []
    @comments = Comments.find_all_by_posts_id(params[:id])
    @college = College.find(params[:college_id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def new
    @college_id = params[:college_id]
  end

  def create
  @post = Post.new(post_params)
  @post.college_id = params[:college_id]
    if @post.save
      redirect_to posts_path(:college_id => params[:college_id])
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :email, :university)
  end
end
