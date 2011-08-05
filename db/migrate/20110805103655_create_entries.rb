class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :name
      t.text :description
      t.string :team
      t.string :appexchange
      t.string :github
      t.string :video

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
