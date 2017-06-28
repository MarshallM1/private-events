class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.date :date
      t.integer :host_id

      t.timestamps
    end
    add_index :events, :host_id
  end
end
