require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/papiers/show.html.erb" do
  include PapiersHelper
  before(:each) do
    assigns[:papier] = @papier = stub_model(Papier,
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
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ body/)
    response.should have_text(/false/)
    response.should have_text(/value\ for\ picture/)
    response.should have_text(/value\ for\ picture2/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/value\ for\ category/)
    response.should have_text(/value\ for\ author_name/)
    response.should have_text(/value\ for\ author_email/)
    response.should have_text(/value\ for\ author_organisation/)
    response.should have_text(/value\ for\ language/)
    response.should have_text(/1/)
  end
end
