require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Commentaire do
  before(:each) do
    @valid_attributes = {
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
    }
  end

  it "should create a new instance given valid attributes" do
    Commentaire.create!(@valid_attributes)
  end
end
