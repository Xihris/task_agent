class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :full_department
      t.string :short_department

      t.timestamps
    end
  end
end
