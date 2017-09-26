class CreateRunners < ActiveRecord::Migration[5.0]
  def change
    create_table :runners do |t|
      t.string :first_name, presence: true
      t.string :last_name, presence: true
      t.string :predicted_pace
      t.integer :team_id
      t.timestamps
    end
  end
end
