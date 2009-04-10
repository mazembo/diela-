class AddColumnLanguage < ActiveRecord::Migration
  def self.up
  add_column :papers, :language, :string 
  end

  def self.down
  remove_column :papers, :language
  end
end
