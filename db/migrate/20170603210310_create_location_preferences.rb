class CreateLocationPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :location_preferences do |t|
      t.integer :user_id
      t.integer :location_options_id

      t.timestamps

    end
  end
end
