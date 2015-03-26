class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :lair_id
      t.date :start_date
      t.date :end_date
      t.timestamps null: false
    end
  end
end
