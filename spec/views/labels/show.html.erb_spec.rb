require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labels/show.html.erb" do
  include LabelsHelper
  before(:each) do
    assigns[:label] = @label = stub_model(Label,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
