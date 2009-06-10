class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.xml
  def index
    @contacts = Contacts.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contacts = Contacts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @contacts = Contacts.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contacts }
    end
  end

  # GET /contacts/1/edit
  def edit
    @contacts = Contacts.find(params[:id])
  end

  # POST /contacts
  # POST /contacts.xml
  def create
    @contacts = Contacts.new(params[:contacts])

    respond_to do |format|
      if @contacts.save
        flash[:notice] = 'Thanks for writing to us. We will respond to you diligently if necessary.'
        format.html { redirect_to (:controller => 'viewer', :action => 'index') }
        format.xml  { render :xml => @contacts, :status => :created, :location => @contacts }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contacts.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.xml
  def update
    @contacts = Contacts.find(params[:id])

    respond_to do |format|
      if @contacts.update_attributes(params[:contacts])
        flash[:notice] = 'Contacts was successfully updated.'
        format.html { redirect_to(@contacts) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contacts.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @contacts = Contacts.find(params[:id])
    @contacts.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end
end
