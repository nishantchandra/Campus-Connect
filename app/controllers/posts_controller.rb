class PostsController < ApplicationController
  def index
    @college = College.find(params[:college_id])
    @collegeid = @college.id
    @posts = []
    @posts = Post.find_all_by_college_id(params[:college_id])
  end

  def show
    @post = Post.find(params[:id])
    @collegeid = @post.college_id
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

  def search
    @searchvalue = params[:searchcomments]
    @comments = []
    # @comments = Comments.find_by title: @searchvalue
    @comments = Comments.where(:title => params[:searchcomments])
    if @comments.any?
      @postid = @comments[0].posts_id
      @post = Post.find(@postid)
      @collegeid = @post.college_id
    end

  end

  def searchpost
    @searchvalue = params[:searchvalue]
    @posts = []
    @collegeid = params[:temp]
    # @comments = Comments.find_by title: @searchvalue
    @posts = Post.where(:title => params[:searchvalue])
    if @posts.any?
     
    end

  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :email, :university)
  end
end
