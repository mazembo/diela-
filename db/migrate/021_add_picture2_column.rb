class AddPicture2Column < ActiveRecord::Migration
  def self.up
  	add_column :papers, :picture2, :string 
  end

  def self.down
  end
end
