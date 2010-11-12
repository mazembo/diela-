require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LabelsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "labels", :action => "index").should == "/labels"
    end

    it "maps #new" do
      route_for(:controller => "labels", :action => "new").should == "/labels/new"
    end

    it "maps #show" do
      route_for(:controller => "labels", :action => "show", :id => "1").should == "/labels/1"
    end

    it "maps #edit" do
      route_for(:controller => "labels", :action => "edit", :id => "1").should == "/labels/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "labels", :action => "create").should == {:path => "/labels", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "labels", :action => "update", :id => "1").should == {:path =>"/labels/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "labels", :action => "destroy", :id => "1").should == {:path =>"/labels/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/labels").should == {:controller => "labels", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/labels/new").should == {:controller => "labels", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/labels").should == {:controller => "labels", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/labels/1").should == {:controller => "labels", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/labels/1/edit").should == {:controller => "labels", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/labels/1").should == {:controller => "labels", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/labels/1").should == {:controller => "labels", :action => "destroy", :id => "1"}
    end
  end
end
