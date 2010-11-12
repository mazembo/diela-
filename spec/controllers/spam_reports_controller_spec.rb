require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SpamReportsController do

  def mock_spam_report(stubs={})
    @mock_spam_report ||= mock_model(SpamReport, stubs)
  end

  describe "GET index" do
    it "assigns all spam_reports as @spam_reports" do
      SpamReport.stub!(:find).with(:all).and_return([mock_spam_report])
      get :index
      assigns[:spam_reports].should == [mock_spam_report]
    end
  end

  describe "GET show" do
    it "assigns the requested spam_report as @spam_report" do
      SpamReport.stub!(:find).with("37").and_return(mock_spam_report)
      get :show, :id => "37"
      assigns[:spam_report].should equal(mock_spam_report)
    end
  end

  describe "GET new" do
    it "assigns a new spam_report as @spam_report" do
      SpamReport.stub!(:new).and_return(mock_spam_report)
      get :new
      assigns[:spam_report].should equal(mock_spam_report)
    end
  end

  describe "GET edit" do
    it "assigns the requested spam_report as @spam_report" do
      SpamReport.stub!(:find).with("37").and_return(mock_spam_report)
      get :edit, :id => "37"
      assigns[:spam_report].should equal(mock_spam_report)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created spam_report as @spam_report" do
        SpamReport.stub!(:new).with({'these' => 'params'}).and_return(mock_spam_report(:save => true))
        post :create, :spam_report => {:these => 'params'}
        assigns[:spam_report].should equal(mock_spam_report)
      end

      it "redirects to the created spam_report" do
        SpamReport.stub!(:new).and_return(mock_spam_report(:save => true))
        post :create, :spam_report => {}
        response.should redirect_to(spam_report_url(mock_spam_report))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved spam_report as @spam_report" do
        SpamReport.stub!(:new).with({'these' => 'params'}).and_return(mock_spam_report(:save => false))
        post :create, :spam_report => {:these => 'params'}
        assigns[:spam_report].should equal(mock_spam_report)
      end

      it "re-renders the 'new' template" do
        SpamReport.stub!(:new).and_return(mock_spam_report(:save => false))
        post :create, :spam_report => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested spam_report" do
        SpamReport.should_receive(:find).with("37").and_return(mock_spam_report)
        mock_spam_report.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :spam_report => {:these => 'params'}
      end

      it "assigns the requested spam_report as @spam_report" do
        SpamReport.stub!(:find).and_return(mock_spam_report(:update_attributes => true))
        put :update, :id => "1"
        assigns[:spam_report].should equal(mock_spam_report)
      end

      it "redirects to the spam_report" do
        SpamReport.stub!(:find).and_return(mock_spam_report(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(spam_report_url(mock_spam_report))
      end
    end

    describe "with invalid params" do
      it "updates the requested spam_report" do
        SpamReport.should_receive(:find).with("37").and_return(mock_spam_report)
        mock_spam_report.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :spam_report => {:these => 'params'}
      end

      it "assigns the spam_report as @spam_report" do
        SpamReport.stub!(:find).and_return(mock_spam_report(:update_attributes => false))
        put :update, :id => "1"
        assigns[:spam_report].should equal(mock_spam_report)
      end

      it "re-renders the 'edit' template" do
        SpamReport.stub!(:find).and_return(mock_spam_report(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested spam_report" do
      SpamReport.should_receive(:find).with("37").and_return(mock_spam_report)
      mock_spam_report.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the spam_reports list" do
      SpamReport.stub!(:find).and_return(mock_spam_report(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(spam_reports_url)
    end
  end

end
