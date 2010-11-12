require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/commentaires/edit.html.erb" do
  include CommentairesHelper

  before(:each) do
    assigns[:commentaire] = @commentaire = stub_model(Commentaire,
      :new_record? => false,
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
    )
  end

  it "renders the edit commentaire form" do
    render

    response.should have_tag("form[action=#{commentaire_path(@commentaire)}][method=post]") do
      with_tag('input#commentaire_name[name=?]', "commentaire[name]")
      with_tag('input#commentaire_email[name=?]', "commentaire[email]")
      with_tag('input#commentaire_papier_id[name=?]', "commentaire[papier_id]")
      with_tag('textarea#commentaire_text[name=?]', "commentaire[text]")
      with_tag('input#commentaire_user_ip[name=?]', "commentaire[user_ip]")
      with_tag('input#commentaire_user_agent[name=?]', "commentaire[user_agent]")
      with_tag('input#commentaire_where_from[name=?]', "commentaire[where_from]")
      with_tag('input#commentaire_position[name=?]', "commentaire[position]")
      with_tag('input#commentaire_referrer[name=?]', "commentaire[referrer]")
      with_tag('input#commentaire_site_url[name=?]', "commentaire[site_url]")
    end
  end
end
