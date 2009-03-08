class AddAttributeCategory < ActiveRecord::Migration
  def self.up
    add_column :papers, :category, :string
  end

  def self.down
  remove column :papers, :category
  end
end
