class RemoveAuthorIn < ActiveRecord::Migration
  def self.up
      remove_column :papers, :author
      add_column :papers, :author_id, :integer
  end

  end

