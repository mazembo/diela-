class CommentsController < ApplicationController
def index
    @paper = Paper.find(params[:paper_id])
    @comments = @paper.comments
  end

  def show
    @paper = Paper.find(params[:paper_id])
    @comment = @paper.comments.find(params[:id])
  end

  def new
    @paper = Paper.find(params[:paper_id])
    @comment = @paper.comments.build
  end

  def create
    @paper = Paper.find(params[:paper_id])
    @comment = @paper.comments.build(params[:comment])
    if @comment.save
      redirect_to post_comment_url(@post, @comment)
    else
      render :action => "new"
    end
  end

  def edit
    @paper = Paper.find(params[:paper_id])
    @comment = @paper.comments.find(params[:id])
  end

  def update
    @paper = Paper.find(params[:paper_id])
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to post_comment_url(@post, @comment)
    else
      render :action => "edit"
    end
  end

end

