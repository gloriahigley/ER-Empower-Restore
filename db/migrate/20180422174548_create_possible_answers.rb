class CreatePossibleAnswers < ActiveRecord::Migration
  def change
    create_table :possible_answers do |t|
      t.integer :question_id
      t.integer :order
      t.string :answer_text
      t.string :is_text
      t.string :boolean

      t.timestamps null: false
    end
  end
end
