class CreateTempTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :temp_tasks do |t|
      t.text :companys
      t.date :date_start
      t.date :date_end
      t.integer :author_id
      t.integer :user_id

      t.timestamps
    end
  end
end
