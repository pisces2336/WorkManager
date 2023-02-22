class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :work_id
      t.string :title
      t.date :scheduled_date
      t.date :due_date

      t.timestamps
    end
  end
end
