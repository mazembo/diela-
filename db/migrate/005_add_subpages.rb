class AddSubpages < ActiveRecord::Migration
  def self.up
     add_column :papers, :parent_id, :integer
     add_column :papers, :navlabel, :string
     add_column :papers, :position, :integer 
  end

  def self.down
      remove_column :papers, :parent_id
      remove_column :papers, :navlabel
      remove_column :papers, :position
  end
end
