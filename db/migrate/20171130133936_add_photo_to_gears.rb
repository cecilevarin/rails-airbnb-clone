class AddPhotoToGears < ActiveRecord::Migration[5.0]
  def change
    add_column :gears, :photo, :string
  end
end
