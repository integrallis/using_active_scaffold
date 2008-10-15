class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.string  :name, :description
      t.integer :priority
      t.boolean :complete
      t.date :due_date
      t.timestamps

      ## FK
      t.integer :user_id
      t.integer :category_id
    end
  end

  def self.down
    drop_table :todos
  end
end
