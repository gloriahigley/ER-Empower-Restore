class ChangeColumnInRoutingsTable < ActiveRecord::Migration
  def change
    remove_column :routings, :possible_id, :integer
    add_column :routings, :possible_answer_id, :integer
  end
end
