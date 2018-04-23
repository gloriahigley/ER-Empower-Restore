class CreateActualActionPlans < ActiveRecord::Migration
  def change
    create_table :actual_action_plans do |t|
      t.integer :assessment_id
      t.integer :possible_action_plan_id

      t.timestamps null: false
    end
  end
end
