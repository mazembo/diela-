require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labels/new.html.erb" do
  include LabelsHelper

  before(:each) do
    assigns[:label] = stub_model(Label,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new label form" do
    render

    response.should have_tag("form[action=?][method=post]", labels_path) do
      with_tag("input#label_name[name=?]", "label[name]")
    end
  end
end
