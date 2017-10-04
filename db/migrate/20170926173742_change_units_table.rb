class ChangeUnitsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :branch_id, :integer
  end
end
