class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :user_id, null: false, index: true
      t.integer :question_id, null: false, index: true
      t.integer :answer_choice_id, null: false, index: true
      t.timestamps
    end
    add_index :responses, [:user_id, :question_id], unique: true
  end
end
