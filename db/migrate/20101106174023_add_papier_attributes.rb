class AddPapierAttributes < ActiveRecord::Migration
   def self.up
    add_column :papiers, :permalink, :string
    add_column :papiers, :commentaires_count, :integer
  end

  def self.down
    remove_column :papiers, :permalink
    remove_column :papiers, :commentaires_count
  end
end
