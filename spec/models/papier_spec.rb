require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Papier do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :title => "value for title",
      :body => "value for body",
      :admin => false,
      :picture => "value for picture",
      :picture2 => "value for picture2",
      :description => "value for description",
      :category => "value for category",
      :author_name => "value for author_name",
      :author_email => "value for author_email",
      :author_organisation => "value for author_organisation",
      :language => "value for language",
      :position => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Papier.create!(@valid_attributes)
  end
end
