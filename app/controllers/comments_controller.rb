class CommentsController < ApplicationController
def create 
@comment = Comment.create!(params[:comment])
flash[:notice] = "Thank you for commenting this article"
respond_to do |format|
  format.html { redirect_to paper_path(@comment.paper_id) }
  format.js
  end
 end
end