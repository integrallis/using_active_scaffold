class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name, :last_name, :password
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
