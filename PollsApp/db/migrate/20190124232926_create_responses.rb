class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :answer_id, null: false  
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :responses, [:answer_id, :user_id], unique: true
    add_index :responses, :user_id
  end
end
