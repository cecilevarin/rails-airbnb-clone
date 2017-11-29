class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.references :user, foreign_key: true
      t.references :gear, foreign_key: true

      t.timestamps
    end
  end
end
