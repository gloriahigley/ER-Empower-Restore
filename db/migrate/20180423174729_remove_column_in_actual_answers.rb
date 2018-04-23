class RemoveColumnInActualAnswers < ActiveRecord::Migration
  def change
    remove_column :actual_answers, :next_question_id, :integer
  end
end
