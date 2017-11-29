class ChangeColumnNameInGearTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :gears, :type, :gear_type
  end
end
