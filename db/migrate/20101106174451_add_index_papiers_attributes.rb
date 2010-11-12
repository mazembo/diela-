class AddIndexPapiersAttributes < ActiveRecord::Migration
   def self.up
    add_index :labelings, :papier_id
    add_index :labelings, :label_id
  end

  def self.down
    remove_index :commentaires, :papier_id
    remove_index :labelings, :papier_id
    remove_index :labelings, :label_id
  end
end
