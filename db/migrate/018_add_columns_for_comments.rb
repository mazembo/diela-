class AddColumnsForComments < ActiveRecord::Migration
  def self.up
  add_column :comments, :user_ip, :string 
  add_column :comments, :user_agent, :string
  end

  def self.down
  end
end