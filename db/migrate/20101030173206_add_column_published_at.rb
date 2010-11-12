class AddColumnPublishedAt < ActiveRecord::Migration
  def self.up
    add_column :papers, :published_at, :datetime
  end

  def self.down
    remove_column :papers, :published_at, :datetime
  end
end
