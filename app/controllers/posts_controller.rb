class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def new
    # @post = Post.new(params.permit(:title, :body, :university))
    # # Post.create(:title => params[:title], :body => params[:body], :university => params[:university])
    # redirect_to "posts#index"
  end

  def create
  @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :university)
  end
end
