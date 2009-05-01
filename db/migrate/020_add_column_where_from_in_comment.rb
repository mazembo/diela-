class AddColumnWhereFromInComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :where_from, :string
  end

  def self.down
  end
end
