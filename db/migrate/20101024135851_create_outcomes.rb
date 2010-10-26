class CreateOutcomes < ActiveRecord::Migration
  def self.up
    create_table :outcomes do |t|
      t.string :value
      t.text :description
      t.integer :points
      t.string :lane
      t.timestamps
    end
  end

  def self.down
    drop_table :outcomes
  end
end
