class CreatePossibleActionPlans < ActiveRecord::Migration
  def change
    create_table :possible_action_plans do |t|
      t.integer :question_id
      t.integer :possible_answer_id
      t.string :plan_text
      t.integer :order

      t.timestamps null: false
    end
  end
end
