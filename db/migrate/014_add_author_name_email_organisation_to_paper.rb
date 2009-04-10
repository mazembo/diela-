class AddAuthorNameEmailOrganisationToPaper < ActiveRecord::Migration
  def self.up
    add_column :papers, :author_name, :string
    add_column :papers, :author_email, :string
    add_column :papers, :author_organisation, :string 
  end

  def self.down
    remove_column :papers, :author_name, :string
    remove_column :papers, :author_email, :string
    remove_column :papers, :author_organisation, :string
  end
end
