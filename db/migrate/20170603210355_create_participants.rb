class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.integer :participant_id
      t.integer :trip_id

      t.timestamps

    end
  end
end
