class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :description
      t.datetime :departs_at
      t.integer :user_id
      t.boolean :fifteen_minute_reminder_sent, {:default => false}
      t.boolean :five_minute_reminder_sent, {:default => false}

      t.timestamps
    end
  end
end
