class CreateGears < ActiveRecord::Migration[5.0]
  def change
    create_table :gears do |t|
      t.string :type
      t.integer :year
      t.string :brand
      t.references :user, foreign_key: true
      t.integer :daily_price
      t.string :size
      t.string :model
      t.string :description
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
