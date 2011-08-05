class AddUserToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :user_id, :integer
  end

  def self.down
    remove_column :entries, :user_id
  end
end
