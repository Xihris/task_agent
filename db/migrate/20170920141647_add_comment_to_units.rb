class AddCommentToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :comment, :text
  end
end
