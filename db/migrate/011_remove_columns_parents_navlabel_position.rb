class RemoveColumnsParentsNavlabelPosition < ActiveRecord::Migration
  def self.up
  remove_column :papers, :parent_id
  remove_column :papers, :navlabel
  remove_column :papers, :position
  end

  def self.down
  end
end
