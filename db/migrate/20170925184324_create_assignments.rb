class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :runner_id, null: false
      t.integer :leg_id, null: false
      t.string :start_time_actual
      t.string :end_time_actual
      t.string :completion_time
      t.timestamps
    end
  end
end
