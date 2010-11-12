class CommentsController < ApplicationController

def create 
@comment = Comment.new(params[:comment])
@comment.request = request
if @comment.save
 flash[:notice] = "Successfully created comment."
        redirect_to(:controller => "english_viewer", :action => "index")
      else
        flash[:notice] = "Your comment has not been created. Start over again"
        render(:controller => "english_viewer", :action => "index")
      end
   
    end

end