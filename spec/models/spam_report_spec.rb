require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SpamReport do
  before(:each) do
    @valid_attributes = {
      :comment_id => 1,
      :comment_ip => "value for comment_ip",
      :comment_site_url => "value for comment_site_url",
      :comment_name => "value for comment_name",
      :user_ip => "value for user_ip",
      :confirmed_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    SpamReport.create!(@valid_attributes)
  end
end
