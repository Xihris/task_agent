class ChangeTempTasksTable < ActiveRecord::Migration[5.0]
  def change
    add_column :temp_tasks, :branch_id, :integer
  end
end
