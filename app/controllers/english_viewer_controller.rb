class EnglishViewerController < ApplicationController
 
  def index
  @papers = Paper.paginated_search(params[:search], params[:page])

  end

   def show
   @paper = Paper.find_by_id(params[:id])
   @comment = Comment.new(:paper => @paper)
  end

   def research_papers

   end

   def publications

   end

   def e_libray
   end

   def events
   end

   def enewsletter
   end

   def support_us

   end

end
