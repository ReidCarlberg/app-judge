class CreateUserEntryQuestions < ActiveRecord::Migration
  def self.up
    create_table :user_entry_questions do |t|
      t.integer :user_id
      t.integer :entry_id
      t.integer :question_id
      t.integer :score
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :user_entry_questions
  end
end
