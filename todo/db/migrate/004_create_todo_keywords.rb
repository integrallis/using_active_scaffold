# To change this template, choose Tools | Templates
# and open the template in the editor.

class CreateTodoKeywords < ActiveRecord::Migration
  def self.up
    create_table "keywords_todos", :id => false do |t|
      t.column "todo_id", :integer, :null => false
      t.column "keyword_id",  :integer, :null => false
    end
  end

  def self.down
    drop_table "keywords_todos"
  end
end
