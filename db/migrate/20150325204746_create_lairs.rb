class CreateLairs < ActiveRecord::Migration
  def change
    create_table :lairs do |t|
      t.string :name
      t.string :lair_type
      t.string :doomsday_devices
      t.integer :price

      t.timestamps null: false
    end
  end
end
