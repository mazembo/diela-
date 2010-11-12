class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :taggings, :paper_id
    add_index :taggings, :tag_id
  end

  def self.down
    remove_index :comments, :paper_id
    remove_index :taggings, :paper_id
    remove_index :taggings, :tag_id
  end

end
