require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/papiers/new.html.erb" do
  include PapiersHelper

  before(:each) do
    assigns[:papier] = stub_model(Papier,
      :new_record? => true,
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

  it "renders new papier form" do
    render

    response.should have_tag("form[action=?][method=post]", papiers_path) do
      with_tag("input#papier_name[name=?]", "papier[name]")
      with_tag("input#papier_title[name=?]", "papier[title]")
      with_tag("textarea#papier_body[name=?]", "papier[body]")
      with_tag("input#papier_admin[name=?]", "papier[admin]")
      with_tag("input#papier_picture[name=?]", "papier[picture]")
      with_tag("input#papier_picture2[name=?]", "papier[picture2]")
      with_tag("textarea#papier_description[name=?]", "papier[description]")
      with_tag("input#papier_category[name=?]", "papier[category]")
      with_tag("input#papier_author_name[name=?]", "papier[author_name]")
      with_tag("input#papier_author_email[name=?]", "papier[author_email]")
      with_tag("input#papier_author_organisation[name=?]", "papier[author_organisation]")
      with_tag("input#papier_language[name=?]", "papier[language]")
      with_tag("input#papier_position[name=?]", "papier[position]")
    end
  end
end
