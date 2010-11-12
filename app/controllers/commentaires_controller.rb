class CommentairesController < ApplicationController
  # GET /commentaires
  # GET /commentaires.xml
  def index
    @commentaires = Commentaire.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commentaires }
    end
  end

  # GET /commentaires/1
  # GET /commentaires/1.xml
  def show
    @commentaire = Commentaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commentaire }
    end
  end

  # GET /commentaires/new
  # GET /commentaires/new.xml
  def new
    @commentaire = Commentaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commentaire }
    end
  end

  # GET /commentaires/1/edit
  def edit
    @commentaire = Commentaire.find(params[:id])
  end

  # POST /commentaires
  # POST /commentaires.xml
  def create
    @commentaire = Commentaire.new(params[:commentaire])
    @commentaire.request = request
    if @commentaire.save
 flash[:notice] = "Merci pour ton commentaire ."
        redirect_to(:controller => "french_viewer", :action => "index")
      else
        flash[:notice] = "Ton commentaire n'a pas ete cree. Essayez encore "
        render(:controller => "french_viewer", :action => "index")
      end
  end

  # PUT /commentaires/1
  # PUT /commentaires/1.xml
  def update
    @commentaire = Commentaire.find(params[:id])

    respond_to do |format|
      if @commentaire.update_attributes(params[:commentaire])
        flash[:notice] = 'Commentaire was successfully updated.'
        format.html { redirect_to(@commentaire) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commentaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commentaires/1
  # DELETE /commentaires/1.xml
  def destroy
    @commentaire = Commentaire.find(params[:id])
    @commentaire.destroy

    respond_to do |format|
      format.html { redirect_to(commentaires_url) }
      format.xml  { head :ok }
    end
  end
end
