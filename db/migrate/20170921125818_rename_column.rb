class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :authors, :department, :department_id
    change_column :authors, :department_id, :integer
  end
end
