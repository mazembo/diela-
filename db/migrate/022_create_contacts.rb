class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :Name
      t.string :Email
      t.string :Where_From
      t.text :Message

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
