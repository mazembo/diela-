require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/commentaires/index.html.erb" do
  include CommentairesHelper

  before(:each) do
    assigns[:commentaires] = [
      stub_model(Commentaire,
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
      ),
      stub_model(Commentaire,
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
    ]
  end

  it "renders a list of commentaires" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for email".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for text".to_s, 2)
    response.should have_tag("tr>td", "value for user_ip".to_s, 2)
    response.should have_tag("tr>td", "value for user_agent".to_s, 2)
    response.should have_tag("tr>td", "value for where_from".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for referrer".to_s, 2)
    response.should have_tag("tr>td", "value for site_url".to_s, 2)
  end
end
