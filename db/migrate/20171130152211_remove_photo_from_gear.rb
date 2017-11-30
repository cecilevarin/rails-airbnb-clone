class RemovePhotoFromGear < ActiveRecord::Migration[5.0]
  def change
    remove_column :gears, :photo, :string
  end
end
