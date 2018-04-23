class RemoveBooleanColumnFromPossibleAnswers < ActiveRecord::Migration
  def change
    remove_column :possible_answers, :is_text, :boolean
  end
end
