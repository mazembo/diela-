class AddColumnsPublishedDateInPapers < ActiveRecord::Migration
  def self.up
  add_column :papers, :published_date, :datetime
  end

  def self.down
  end
end
