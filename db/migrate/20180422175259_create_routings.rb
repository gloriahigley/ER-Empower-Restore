class CreateRoutings < ActiveRecord::Migration
  def change
    create_table :routings do |t|
      t.integer :question_id
      t.integer :possible_id
      t.integer :next_question_id

      t.timestamps null: false
    end
  end
end
