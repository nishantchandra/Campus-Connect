class CommentsController < ApplicationController

  def new
    @posts_id = params[:id]
  end

  def create
    @comment = Comments.new(post_params)
    p "Hellop hfefueh"
    @comment.posts_id = params[:posts_id]
    p @comment
    if @comment.save
      redirect_to post_path(@comment.posts_id)
    else
      p "didn't save"
    end
  end


  private
  def post_params
    params.require(:comments).permit(:title, :body, :posts_id)
  end

end
