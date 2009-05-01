class ViewerController < ApplicationController
  
  def showE
   @paper = Paper.find_by_id(params[:id])
   @comment = Comment.new(:paper => @paper)
   
  end
  
  def home
  @papers = Paper.find(:all, 
                      :conditions => ["category = 'article' and language = 'english'"])
                     
    
  end
  
  def homef
  @paper = Paper.find(:all, 
                      :conditions => ["category = 'article' and language = 'french'"])
  end
  
end
