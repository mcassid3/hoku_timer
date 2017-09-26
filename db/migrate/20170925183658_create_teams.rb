class CreateTeams < ActiveRecord::Migration[5.0]
  def change
      create_table :teams do |t|
      t.string :team_name, null: false
      t.string :division
      t.string :average_pace
      t.string :start_time
      t.string :end_time
      t.string :elapsed_time
      t.timestamps
    end
  end
end
