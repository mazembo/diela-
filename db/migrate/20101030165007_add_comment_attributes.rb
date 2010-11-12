class AddCommentAttributes < ActiveRecord::Migration
  def self.up
    add_column :comments, :position, :integer, :default => 0
    add_column :comments, :referrer, :string
    add_column :comments, :site_url, :string

  end

  def self.down
    remove_column :comments, :position
    remove_column :comments, :referrer
    remove_column :comments, :site_url
  end
end
