class RemoveCommentAttribute < ActiveRecord::Migration
  def self.up
  remove_column :comments, :comment
  add_column :comments, :text, :text
  end

  def self.down
  end
end
