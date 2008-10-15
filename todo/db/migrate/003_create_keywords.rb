class CreateKeywords < ActiveRecord::Migration
  def self.up
    create_table :keywords do |t|
      t.string :name
      t.string :description
      t.timestamps

      ## FK Constraint
      t.integer :todo_id
    end
  end

  def self.down
    drop_table :keywords
  end
end
