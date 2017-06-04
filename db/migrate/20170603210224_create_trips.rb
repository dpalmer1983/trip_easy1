class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.date :date
      t.integer :comment_id
      t.integer :planner_id

      t.timestamps

    end
  end
end
