class CreateLocationOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :location_options do |t|
      t.string :option
      t.integer :trip_id

      t.timestamps

    end
  end
end
