class AddAdminAttributeToPages < ActiveRecord::Migration
  def self.up
  add_column :papers, :admin, :boolean 
  
  @pages = Paper.find(:all)
  @pages.each do |page|
   page.update_attribute(:admin, false)
  end
  end

  def self.down
  remove column :pages, :admin
  end
end
