class AddColumnsForComments < ActiveRecord::Migration
  def self.up
  add_column :comments, :user_ip, :string 
  add_column :comments, :user_agent, :string
  end

  def self.down
  remove_column :comments, :user_ip
  remove_column :comments, :user_agent
  end
end