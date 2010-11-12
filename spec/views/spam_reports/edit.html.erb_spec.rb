require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/spam_reports/edit.html.erb" do
  include SpamReportsHelper

  before(:each) do
    assigns[:spam_report] = @spam_report = stub_model(SpamReport,
      :new_record? => false,
      :comment_id => 1,
      :comment_ip => "value for comment_ip",
      :comment_site_url => "value for comment_site_url",
      :comment_name => "value for comment_name",
      :user_ip => "value for user_ip"
    )
  end

  it "renders the edit spam_report form" do
    render

    response.should have_tag("form[action=#{spam_report_path(@spam_report)}][method=post]") do
      with_tag('input#spam_report_comment_id[name=?]', "spam_report[comment_id]")
      with_tag('input#spam_report_comment_ip[name=?]', "spam_report[comment_ip]")
      with_tag('input#spam_report_comment_site_url[name=?]', "spam_report[comment_site_url]")
      with_tag('input#spam_report_comment_name[name=?]', "spam_report[comment_name]")
      with_tag('input#spam_report_user_ip[name=?]', "spam_report[user_ip]")
    end
  end
end
