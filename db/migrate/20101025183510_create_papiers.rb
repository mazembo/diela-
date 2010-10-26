class CreatePapiers < ActiveRecord::Migration
  def self.up
    create_table :papiers do |t|
      t.string :name
      t.string :title
      t.text :body
      t.boolean :admin
      t.string :picture
      t.string :picture2
      t.text :description
      t.string :category
      t.string :author_name
      t.string :author_email
      t.string :author_organisation
      t.string :language
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :papiers
  end
end
