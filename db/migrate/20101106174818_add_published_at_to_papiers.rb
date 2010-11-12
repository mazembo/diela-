class AddPublishedAtToPapiers < ActiveRecord::Migration
  def self.up
    add_column :papiers, :published_at, :datetime
  end

  def self.down
    remove_column :papiers, :published_at, :datetime
  end
end
