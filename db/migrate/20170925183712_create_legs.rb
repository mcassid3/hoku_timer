class CreateLegs < ActiveRecord::Migration[5.0]
  def change
    create_table :legs do |t|
      t.string :start_location, presence: true
      t.string :end_location, presence: true
      t.float :distance, presence: true
      t.string :difficulty
      t.string :map_link
      t.timestamps
    end
  end
end
