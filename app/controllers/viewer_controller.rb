class ViewerController < ApplicationController
  
  def showE
   @paper = Paper.find_by_id(params[:id])
   @comment = Comment.new(:paper => @paper)
   
  end
  
  def index
  @papers = Paper.paginated_search (params[:search], params[:page])
                
                     
    
  end
  
  def homef
  @paper = Paper.find(:all, 
                      :conditions => ["category = 'article' and language = 'french'"])
  end
  
  def show
   @paper = Paper.find_by_name(params[:name])
    
  end
  
end
