class CreateCommentaires < ActiveRecord::Migration
  def self.up
    create_table :commentaires do |t|
      t.string :name
      t.string :email
      t.integer :papier_id
      t.text :text
      t.string :user_ip
      t.string :user_agent
      t.string :where_from
      t.integer :position
      t.string :referrer
      t.string :site_url

      t.timestamps
    end
  end

  def self.down
    drop_table :commentaires
  end
end
