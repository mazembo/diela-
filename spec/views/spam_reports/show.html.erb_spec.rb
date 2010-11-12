require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/spam_reports/show.html.erb" do
  include SpamReportsHelper
  before(:each) do
    assigns[:spam_report] = @spam_report = stub_model(SpamReport,
      :comment_id => 1,
      :comment_ip => "value for comment_ip",
      :comment_site_url => "value for comment_site_url",
      :comment_name => "value for comment_name",
      :user_ip => "value for user_ip"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ comment_ip/)
    response.should have_text(/value\ for\ comment_site_url/)
    response.should have_text(/value\ for\ comment_name/)
    response.should have_text(/value\ for\ user_ip/)
  end
end
