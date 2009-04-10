class RemoveAuthorIdFromPaper < ActiveRecord::Migration
  def self.up
    remove_column :papers, :author_id
  end

  def self.down
  end
end
