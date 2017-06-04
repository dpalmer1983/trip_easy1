class CreateDatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :date_preferences do |t|
      t.integer :user_id
      t.integer :date_options_id

      t.timestamps

    end
  end
end
