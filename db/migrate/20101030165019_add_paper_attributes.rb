class AddPaperAttributes < ActiveRecord::Migration
  def self.up
    add_column :papers, :permalink, :string
    add_column :papers, :comments_count, :integer
  end

  def self.down
    remove_column :papers, :permalink
    remove_column :papers, :comments_count
  end
end
