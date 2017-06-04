class CreateDateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :date_options do |t|
      t.integer :trip_id
      t.date :option

      t.timestamps

    end
  end
end
