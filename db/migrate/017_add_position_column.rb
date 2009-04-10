class AddPositionColumn < ActiveRecord::Migration
  def self.up
  add_column :papers, :position, :integer, :default => 0

  end

  def self.down
  remove_column :papers, :position 
  end
end
