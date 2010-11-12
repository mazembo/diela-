require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SpamReportsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "spam_reports", :action => "index").should == "/spam_reports"
    end

    it "maps #new" do
      route_for(:controller => "spam_reports", :action => "new").should == "/spam_reports/new"
    end

    it "maps #show" do
      route_for(:controller => "spam_reports", :action => "show", :id => "1").should == "/spam_reports/1"
    end

    it "maps #edit" do
      route_for(:controller => "spam_reports", :action => "edit", :id => "1").should == "/spam_reports/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "spam_reports", :action => "create").should == {:path => "/spam_reports", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "spam_reports", :action => "update", :id => "1").should == {:path =>"/spam_reports/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "spam_reports", :action => "destroy", :id => "1").should == {:path =>"/spam_reports/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/spam_reports").should == {:controller => "spam_reports", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/spam_reports/new").should == {:controller => "spam_reports", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/spam_reports").should == {:controller => "spam_reports", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/spam_reports/1").should == {:controller => "spam_reports", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/spam_reports/1/edit").should == {:controller => "spam_reports", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/spam_reports/1").should == {:controller => "spam_reports", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/spam_reports/1").should == {:controller => "spam_reports", :action => "destroy", :id => "1"}
    end
  end
end
