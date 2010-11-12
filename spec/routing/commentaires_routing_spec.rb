require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CommentairesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "commentaires", :action => "index").should == "/commentaires"
    end

    it "maps #new" do
      route_for(:controller => "commentaires", :action => "new").should == "/commentaires/new"
    end

    it "maps #show" do
      route_for(:controller => "commentaires", :action => "show", :id => "1").should == "/commentaires/1"
    end

    it "maps #edit" do
      route_for(:controller => "commentaires", :action => "edit", :id => "1").should == "/commentaires/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "commentaires", :action => "create").should == {:path => "/commentaires", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "commentaires", :action => "update", :id => "1").should == {:path =>"/commentaires/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "commentaires", :action => "destroy", :id => "1").should == {:path =>"/commentaires/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/commentaires").should == {:controller => "commentaires", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/commentaires/new").should == {:controller => "commentaires", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/commentaires").should == {:controller => "commentaires", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/commentaires/1").should == {:controller => "commentaires", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/commentaires/1/edit").should == {:controller => "commentaires", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/commentaires/1").should == {:controller => "commentaires", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/commentaires/1").should == {:controller => "commentaires", :action => "destroy", :id => "1"}
    end
  end
end
