class SpamReportsController < ApplicationController
  # GET /spam_reports
  # GET /spam_reports.xml
  def index
    @spam_reports = SpamReport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spam_reports }
    end
  end

  # GET /spam_reports/1
  # GET /spam_reports/1.xml
  def show
    @spam_report = SpamReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spam_report }
    end
  end

  # GET /spam_reports/new
  # GET /spam_reports/new.xml
  def new
    @spam_report = SpamReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spam_report }
    end
  end

  # GET /spam_reports/1/edit
  def edit
    @spam_report = SpamReport.find(params[:id])
  end

  # POST /spam_reports
  # POST /spam_reports.xml
  def create
    @spam_report = SpamReport.new(params[:spam_report])

    respond_to do |format|
      if @spam_report.save
        flash[:notice] = 'SpamReport was successfully created.'
        format.html { redirect_to(@spam_report) }
        format.xml  { render :xml => @spam_report, :status => :created, :location => @spam_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spam_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spam_reports/1
  # PUT /spam_reports/1.xml
  def update
    @spam_report = SpamReport.find(params[:id])

    respond_to do |format|
      if @spam_report.update_attributes(params[:spam_report])
        flash[:notice] = 'SpamReport was successfully updated.'
        format.html { redirect_to(@spam_report) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spam_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spam_reports/1
  # DELETE /spam_reports/1.xml
  def destroy
    @spam_report = SpamReport.find(params[:id])
    @spam_report.destroy

    respond_to do |format|
      format.html { redirect_to(spam_reports_url) }
      format.xml  { head :ok }
    end
  end
end
