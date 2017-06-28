class ChangeGuestColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :attendees, :guest, :guest_id
  end
end
