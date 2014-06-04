class CommentsController < ApplicationController

  def new
    @posts_id = params[:id]
    @college_id = params[:college_id]
  end

  def create
    @comment = Comments.new(post_params)
    @comment.posts_id = params[:posts_id]
    @college_id = params[:college_id]
    if @comment.save
       redirect_to post_path(@comment.posts_id, :college_id => @college_id)
    else
      p "didn't save"
    end
  end


  private
  def post_params
    params.require(:comments).permit(:title, :body, :posts_id)
  end

end
