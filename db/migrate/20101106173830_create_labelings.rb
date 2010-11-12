class CreateLabelings < ActiveRecord::Migration
  def self.up
    create_table :labelings do |t|
      t.integer :papier_id
      t.integer :label_id

      t.timestamps
    end
  end

  def self.down
    drop_table :labelings
  end
end
