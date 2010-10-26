require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/papiers/index.html.erb" do
  include PapiersHelper

  before(:each) do
    assigns[:papiers] = [
      stub_model(Papier,
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
      ),
      stub_model(Papier,
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
    ]
  end

  it "renders a list of papiers" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for body".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
    response.should have_tag("tr>td", "value for picture".to_s, 2)
    response.should have_tag("tr>td", "value for picture2".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", "value for category".to_s, 2)
    response.should have_tag("tr>td", "value for author_name".to_s, 2)
    response.should have_tag("tr>td", "value for author_email".to_s, 2)
    response.should have_tag("tr>td", "value for author_organisation".to_s, 2)
    response.should have_tag("tr>td", "value for language".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
