class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event_date
      t.time :event_time
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
