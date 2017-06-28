class CreateAttendees < ActiveRecord::Migration[5.0]
  def change
    create_table :attendees do |t|
      t.integer :event_id
      t.integer :guest

      t.timestamps
    end
  end
end
