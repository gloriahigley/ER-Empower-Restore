class ChangeStringToBooleanInPossibleAnswers < ActiveRecord::Migration
  def change
    change_column :possible_answers, :is_text, :boolean
  end
end
