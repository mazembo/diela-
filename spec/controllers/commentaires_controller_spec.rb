require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CommentairesController do

  def mock_commentaire(stubs={})
    @mock_commentaire ||= mock_model(Commentaire, stubs)
  end

  describe "GET index" do
    it "assigns all commentaires as @commentaires" do
      Commentaire.stub!(:find).with(:all).and_return([mock_commentaire])
      get :index
      assigns[:commentaires].should == [mock_commentaire]
    end
  end

  describe "GET show" do
    it "assigns the requested commentaire as @commentaire" do
      Commentaire.stub!(:find).with("37").and_return(mock_commentaire)
      get :show, :id => "37"
      assigns[:commentaire].should equal(mock_commentaire)
    end
  end

  describe "GET new" do
    it "assigns a new commentaire as @commentaire" do
      Commentaire.stub!(:new).and_return(mock_commentaire)
      get :new
      assigns[:commentaire].should equal(mock_commentaire)
    end
  end

  describe "GET edit" do
    it "assigns the requested commentaire as @commentaire" do
      Commentaire.stub!(:find).with("37").and_return(mock_commentaire)
      get :edit, :id => "37"
      assigns[:commentaire].should equal(mock_commentaire)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created commentaire as @commentaire" do
        Commentaire.stub!(:new).with({'these' => 'params'}).and_return(mock_commentaire(:save => true))
        post :create, :commentaire => {:these => 'params'}
        assigns[:commentaire].should equal(mock_commentaire)
      end

      it "redirects to the created commentaire" do
        Commentaire.stub!(:new).and_return(mock_commentaire(:save => true))
        post :create, :commentaire => {}
        response.should redirect_to(commentaire_url(mock_commentaire))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved commentaire as @commentaire" do
        Commentaire.stub!(:new).with({'these' => 'params'}).and_return(mock_commentaire(:save => false))
        post :create, :commentaire => {:these => 'params'}
        assigns[:commentaire].should equal(mock_commentaire)
      end

      it "re-renders the 'new' template" do
        Commentaire.stub!(:new).and_return(mock_commentaire(:save => false))
        post :create, :commentaire => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested commentaire" do
        Commentaire.should_receive(:find).with("37").and_return(mock_commentaire)
        mock_commentaire.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :commentaire => {:these => 'params'}
      end

      it "assigns the requested commentaire as @commentaire" do
        Commentaire.stub!(:find).and_return(mock_commentaire(:update_attributes => true))
        put :update, :id => "1"
        assigns[:commentaire].should equal(mock_commentaire)
      end

      it "redirects to the commentaire" do
        Commentaire.stub!(:find).and_return(mock_commentaire(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(commentaire_url(mock_commentaire))
      end
    end

    describe "with invalid params" do
      it "updates the requested commentaire" do
        Commentaire.should_receive(:find).with("37").and_return(mock_commentaire)
        mock_commentaire.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :commentaire => {:these => 'params'}
      end

      it "assigns the commentaire as @commentaire" do
        Commentaire.stub!(:find).and_return(mock_commentaire(:update_attributes => false))
        put :update, :id => "1"
        assigns[:commentaire].should equal(mock_commentaire)
      end

      it "re-renders the 'edit' template" do
        Commentaire.stub!(:find).and_return(mock_commentaire(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested commentaire" do
      Commentaire.should_receive(:find).with("37").and_return(mock_commentaire)
      mock_commentaire.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the commentaires list" do
      Commentaire.stub!(:find).and_return(mock_commentaire(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(commentaires_url)
    end
  end

end
