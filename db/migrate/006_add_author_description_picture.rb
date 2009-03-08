class AddAuthorDescriptionPicture < ActiveRecord::Migration
  def self.up
     add_column :papers, :author_id, :integer
     add_column :papers, :picture, :string
     add_column :papers, :description, :text 
  end

  def self.down
      remove_column :papers, :author
      remove_column :papers, :picture
      remove_column :papers, :description
  end
end
