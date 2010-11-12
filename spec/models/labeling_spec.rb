require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Labeling do
  before(:each) do
    @valid_attributes = {
      :papier_id => 1,
      :label_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Labeling.create!(@valid_attributes)
  end
end
