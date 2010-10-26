class PapiersController < ApplicationController
  # GET /papiers
  # GET /papiers.xml
  def index
    @papiers = Papier.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @papiers }
    end
  end

  # GET /papiers/1
  # GET /papiers/1.xml
  def show
    @papier = Papier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @papier }
    end
  end

  # GET /papiers/new
  # GET /papiers/new.xml
  def new
    @papier = Papier.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @papier }
    end
  end

  # GET /papiers/1/edit
  def edit
    @papier = Papier.find(params[:id])
  end

  # POST /papiers
  # POST /papiers.xml
  def create
    @papier = Papier.new(params[:papier])

    respond_to do |format|
      if @papier.save
        flash[:notice] = 'Papier was successfully created.'
        format.html { redirect_to(@papier) }
        format.xml  { render :xml => @papier, :status => :created, :location => @papier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @papier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /papiers/1
  # PUT /papiers/1.xml
  def update
    @papier = Papier.find(params[:id])

    respond_to do |format|
      if @papier.update_attributes(params[:papier])
        flash[:notice] = 'Papier was successfully updated.'
        format.html { redirect_to(@papier) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @papier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /papiers/1
  # DELETE /papiers/1.xml
  def destroy
    @papier = Papier.find(params[:id])
    @papier.destroy

    respond_to do |format|
      format.html { redirect_to(papiers_url) }
      format.xml  { head :ok }
    end
  end
end
