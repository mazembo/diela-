require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/labels/edit.html.erb" do
  include LabelsHelper

  before(:each) do
    assigns[:label] = @label = stub_model(Label,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit label form" do
    render

    response.should have_tag("form[action=#{label_path(@label)}][method=post]") do
      with_tag('input#label_name[name=?]', "label[name]")
    end
  end
end
