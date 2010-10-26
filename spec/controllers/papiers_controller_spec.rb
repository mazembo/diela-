require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PapiersController do

  def mock_papier(stubs={})
    @mock_papier ||= mock_model(Papier, stubs)
  end

  describe "GET index" do
    it "assigns all papiers as @papiers" do
      Papier.stub!(:find).with(:all).and_return([mock_papier])
      get :index
      assigns[:papiers].should == [mock_papier]
    end
  end

  describe "GET show" do
    it "assigns the requested papier as @papier" do
      Papier.stub!(:find).with("37").and_return(mock_papier)
      get :show, :id => "37"
      assigns[:papier].should equal(mock_papier)
    end
  end

  describe "GET new" do
    it "assigns a new papier as @papier" do
      Papier.stub!(:new).and_return(mock_papier)
      get :new
      assigns[:papier].should equal(mock_papier)
    end
  end

  describe "GET edit" do
    it "assigns the requested papier as @papier" do
      Papier.stub!(:find).with("37").and_return(mock_papier)
      get :edit, :id => "37"
      assigns[:papier].should equal(mock_papier)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created papier as @papier" do
        Papier.stub!(:new).with({'these' => 'params'}).and_return(mock_papier(:save => true))
        post :create, :papier => {:these => 'params'}
        assigns[:papier].should equal(mock_papier)
      end

      it "redirects to the created papier" do
        Papier.stub!(:new).and_return(mock_papier(:save => true))
        post :create, :papier => {}
        response.should redirect_to(papier_url(mock_papier))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved papier as @papier" do
        Papier.stub!(:new).with({'these' => 'params'}).and_return(mock_papier(:save => false))
        post :create, :papier => {:these => 'params'}
        assigns[:papier].should equal(mock_papier)
      end

      it "re-renders the 'new' template" do
        Papier.stub!(:new).and_return(mock_papier(:save => false))
        post :create, :papier => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested papier" do
        Papier.should_receive(:find).with("37").and_return(mock_papier)
        mock_papier.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :papier => {:these => 'params'}
      end

      it "assigns the requested papier as @papier" do
        Papier.stub!(:find).and_return(mock_papier(:update_attributes => true))
        put :update, :id => "1"
        assigns[:papier].should equal(mock_papier)
      end

      it "redirects to the papier" do
        Papier.stub!(:find).and_return(mock_papier(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(papier_url(mock_papier))
      end
    end

    describe "with invalid params" do
      it "updates the requested papier" do
        Papier.should_receive(:find).with("37").and_return(mock_papier)
        mock_papier.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :papier => {:these => 'params'}
      end

      it "assigns the papier as @papier" do
        Papier.stub!(:find).and_return(mock_papier(:update_attributes => false))
        put :update, :id => "1"
        assigns[:papier].should equal(mock_papier)
      end

      it "re-renders the 'edit' template" do
        Papier.stub!(:find).and_return(mock_papier(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested papier" do
      Papier.should_receive(:find).with("37").and_return(mock_papier)
      mock_papier.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the papiers list" do
      Papier.stub!(:find).and_return(mock_papier(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(papiers_url)
    end
  end

end
