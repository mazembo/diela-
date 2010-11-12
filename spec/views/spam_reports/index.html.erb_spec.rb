require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/spam_reports/index.html.erb" do
  include SpamReportsHelper

  before(:each) do
    assigns[:spam_reports] = [
      stub_model(SpamReport,
        :comment_id => 1,
        :comment_ip => "value for comment_ip",
        :comment_site_url => "value for comment_site_url",
        :comment_name => "value for comment_name",
        :user_ip => "value for user_ip"
      ),
      stub_model(SpamReport,
        :comment_id => 1,
        :comment_ip => "value for comment_ip",
        :comment_site_url => "value for comment_site_url",
        :comment_name => "value for comment_name",
        :user_ip => "value for user_ip"
      )
    ]
  end

  it "renders a list of spam_reports" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for comment_ip".to_s, 2)
    response.should have_tag("tr>td", "value for comment_site_url".to_s, 2)
    response.should have_tag("tr>td", "value for comment_name".to_s, 2)
    response.should have_tag("tr>td", "value for user_ip".to_s, 2)
  end
end
