class FrenchViewerController < ApplicationController

 def index
  @papiers = Papier.paginated_search(params[:search], params[:page])

  end

   def show
   @papier = Papier.find_by_id(params[:id])
   @commentaire = Commentaire.new(:papier => @papier)
  end
  def articles

   end

   def publications

   end

   def bibliotheque
   end

   def evenements
   end

   def abonnement
   end

   def nous_soutenir

   end
end
