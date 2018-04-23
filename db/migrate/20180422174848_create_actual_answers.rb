class CreateActualAnswers < ActiveRecord::Migration
  def change
    create_table :actual_answers do |t|
      t.integer :question_id
      t.integer :possible_answer_id
      t.integer :next_question_id
      t.integer :assessment_id
      t.string :answer_text

      t.timestamps null: false
    end
  end
end
