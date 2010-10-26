require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PapiersController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "papiers", :action => "index").should == "/papiers"
    end

    it "maps #new" do
      route_for(:controller => "papiers", :action => "new").should == "/papiers/new"
    end

    it "maps #show" do
      route_for(:controller => "papiers", :action => "show", :id => "1").should == "/papiers/1"
    end

    it "maps #edit" do
      route_for(:controller => "papiers", :action => "edit", :id => "1").should == "/papiers/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "papiers", :action => "create").should == {:path => "/papiers", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "papiers", :action => "update", :id => "1").should == {:path =>"/papiers/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "papiers", :action => "destroy", :id => "1").should == {:path =>"/papiers/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/papiers").should == {:controller => "papiers", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/papiers/new").should == {:controller => "papiers", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/papiers").should == {:controller => "papiers", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/papiers/1").should == {:controller => "papiers", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/papiers/1/edit").should == {:controller => "papiers", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/papiers/1").should == {:controller => "papiers", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/papiers/1").should == {:controller => "papiers", :action => "destroy", :id => "1"}
    end
  end
end
