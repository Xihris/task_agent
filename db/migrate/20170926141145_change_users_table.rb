class ChangeUsersTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :branch_id, :integer
    add_column :users, :in_out, :boolean, default: true
  end
end
