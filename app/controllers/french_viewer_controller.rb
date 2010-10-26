class FrenchViewerController < ApplicationController

def show
   @paper = Paper.find_by_id(params[:id])
   @comment = Comment.new
  end

  def index
  @papiers = Papier.paginated_search(params[:search], params[:page])

  end

  def homef
  @paper = Paper.find(:all,
                      :conditions => ["category = 'article' and language = 'french'"])
  end

  def show
   @paper = Paper.find_by_name(params[:name])

  end
end
