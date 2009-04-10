class ViewerController < ApplicationController
  
  def show
    @page = Paper.find_by_name(params[:name])
    
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
