class ChangeEventName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :attendees, :event_id, :attended_event_id
  end
end
