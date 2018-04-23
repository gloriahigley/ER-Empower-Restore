class AddRoleIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :role_id, :integer
  end
end
