class AddColumnToPossibleAnswers < ActiveRecord::Migration
  def change
    add_column :possible_answers, :is_text, :boolean
    remove_column :possible_answers, :boolean, :string
  end
end
