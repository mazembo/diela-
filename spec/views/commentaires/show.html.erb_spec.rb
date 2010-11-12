require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/commentaires/show.html.erb" do
  include CommentairesHelper
  before(:each) do
    assigns[:commentaire] = @commentaire = stub_model(Commentaire,
      :name => "value for name",
      :email => "value for email",
      :papier_id => 1,
      :text => "value for text",
      :user_ip => "value for user_ip",
      :user_agent => "value for user_agent",
      :where_from => "value for where_from",
      :position => 1,
      :referrer => "value for referrer",
      :site_url => "value for site_url"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ text/)
    response.should have_text(/value\ for\ user_ip/)
    response.should have_text(/value\ for\ user_agent/)
    response.should have_text(/value\ for\ where_from/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ referrer/)
    response.should have_text(/value\ for\ site_url/)
  end
end
